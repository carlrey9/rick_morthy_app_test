import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';

import 'package:rick_and_morthy_app_test/src/domain/providers/rick_morthy_providers.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/loading_widget.dart';

import '../../widgets/err_widget.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Characters")),
      body: const _BodyCharacters(),
    );
  }
}

class _BodyCharacters extends ConsumerWidget {
  const _BodyCharacters({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characters = ref.watch(charactersProvider);

    return characters.when(
      data: ((List<CharacterModel> data) {
        return Center(
            child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              CharacterWidget(characterModel: data[index]),
              SizedBox(height: 25),
              Divider(),
              SizedBox(height: 25)
            ]);
          },
        ));
      }),
      error: (error, skt) => ErrWidget(error: error.toString()),
      loading: () => Center(child: const LoadingWidget()),
    );
  }
}

class CharacterWidget extends StatelessWidget {
  CharacterModel characterModel;

  CharacterWidget({
    required this.characterModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed('detail_character', extra: characterModel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.4,
            child: Stack(children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Hero(
                  tag: characterModel.image,
                  child: Image(
                    image: NetworkImage(
                      characterModel.image,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  color: Colors.black.withOpacity(0.5),
                  child: Column(
                    children: [
                      Text(characterModel.name,
                          style: TextStyle(fontSize: 24, color: Colors.white)),
                      Text(characterModel.status,
                          style: TextStyle(fontSize: 20, color: Colors.white))
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
