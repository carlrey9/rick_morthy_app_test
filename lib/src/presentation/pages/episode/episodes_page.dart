import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/rick_morthy_providers.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/loading_widget.dart';

import '../../widgets/err_widget.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Episodes")),
      body: _BodyEpisodes(),
    );
  }
}

class _BodyEpisodes extends ConsumerWidget {
  const _BodyEpisodes({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final episodes = ref.watch(episodesProvider);

    return episodes.when(
      data: ((List<EpisodeModel> data) {
        return Center(
            child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              EpisodeWidget(episodeModel: data[index]),
              SizedBox(height: 20),
              Divider(),
              SizedBox(height: 20)
            ]);
          },
        ));
      }),
      error: (error, skt) => ErrWidget(error: error.toString()),
      loading: () => Center(child: const LoadingWidget()),
    );
  }
}

class EpisodeWidget extends StatelessWidget {
  EpisodeModel episodeModel;

  EpisodeWidget({
    required this.episodeModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed('detail_episodes', extra: episodeModel);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.symmetric(horizontal: 10),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.2,
              child: Text(episodeModel.episode,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.05,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              child: Text(episodeModel.name,
                  style: TextStyle(fontSize: 20, color: Colors.black)),
            )
          ],
        ),
      ),
    );
  }
}
