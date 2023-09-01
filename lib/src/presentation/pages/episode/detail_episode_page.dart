import 'package:flutter/material.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/episode/episode_model.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/square_info_widget.dart';

class DetailEpisodePage extends StatelessWidget {
  EpisodeModel episodeModel;
  DetailEpisodePage({required this.episodeModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(episodeModel.name)),
      body: Container(
          child: Column(
        children: [
          SquareInfoWidget(title: "Episode", content: episodeModel.episode),
          SquareInfoWidget(title: "Created", content: episodeModel.created),
          SquareInfoWidget(title: "Air date", content: episodeModel.air_date),
        ],
      )),
    );
  }
}
