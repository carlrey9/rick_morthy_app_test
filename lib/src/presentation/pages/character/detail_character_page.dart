import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/square_info_widget.dart';

class DetailCharacterPage extends StatelessWidget {
  CharacterModel characterModel;
  int id;
  DetailCharacterPage({
    required this.characterModel,
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(characterModel.name),
      ),
      body: _BodyCharacterDetail(characterModel: characterModel),
    );
  }
}

class _BodyCharacterDetail extends StatelessWidget {
  CharacterModel characterModel;
  _BodyCharacterDetail({
    required this.characterModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Hero(
                tag: characterModel.image,
                child: Image(
                  image: NetworkImage(characterModel.image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SquareInfoWidget(
              title: "Status",
              content: characterModel.status,
            ),
            SquareInfoWidget(
              title: "Species",
              content: characterModel.species,
            ),
            SquareInfoWidget(
              title: "Type",
              content: characterModel.type,
            ),
            SquareInfoWidget(
              title: "Gender",
              content: characterModel.gender,
            ),
            SquareInfoWidget(
              title: "Origin",
              content: characterModel.origin.name,
            ),
            SquareInfoWidget(
              title: "Location",
              content: characterModel.location.name,
            ),
            SquareInfoWidget(
              title: "Created",
              content: characterModel.created,
            ),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text(
                "Episodes: ",
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 300,
              child: GridView.builder(
                itemCount: characterModel.episode.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.green,
                        ),
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Text(
                        _getNumberEpisode(characterModel.episode[index]),
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  );
                },
              ),
            ),

            //
          ],
        ),
      ),
    );
  }

  String _getNumberEpisode(String episodeLink) {
    List<String> words = episodeLink.split("/");
    return words[words.length - 1];
  }
}
