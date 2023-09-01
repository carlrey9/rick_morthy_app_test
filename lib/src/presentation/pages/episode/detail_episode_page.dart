import 'package:flutter/material.dart';
import 'package:rick_and_morthy_app_test/src/data/repositories/rick_morthy_api_repository.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/loading_widget.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/square_info_widget.dart';

class DetailEpisodePage extends StatefulWidget {
  EpisodeModel episodeModel;
  DetailEpisodePage({required this.episodeModel, super.key});

  @override
  State<DetailEpisodePage> createState() => _DetailEpisodePageState();
}

class _DetailEpisodePageState extends State<DetailEpisodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.episodeModel.name)),
      body: Container(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SquareInfoWidget(
                title: "Episode", content: widget.episodeModel.episode),
            SquareInfoWidget(
                title: "Created", content: widget.episodeModel.created),
            SquareInfoWidget(
                title: "Air date", content: widget.episodeModel.air_date),
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text("Characters in the episode",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: widget.episodeModel.characters.length,
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
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
                        child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        _getUrlImage(widget.episodeModel.characters[index]),
                        errorBuilder: (context, error, stackTrace) {
                          return InkWell(
                              onTap: () {
                                setState(() {});
                              },
                              child: Icon(Icons.wifi_off_rounded));
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          return loadingProgress == null
                              ? child
                              : Center(child: LoadingWidget());
                        },
                      ),
                    )),
                  );
                },
              ),
            ),
          ],
        ),
      )),
    );
  }

  String _getUrlImage(String characterUrl) {
    //get id;
    List<String> words = characterUrl.split("/");
    String idCharacter = words[words.length - 1];
    //build url;
    String urlImage = endPointCharacters + "/avatar/$idCharacter.jpeg";
    //return ;
    return urlImage;
  }
}
