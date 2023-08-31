import 'package:flutter/material.dart';

class EpisodesPage extends StatelessWidget {
  const EpisodesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Episodes")),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              EpisodeWidget(
                nameEpisode: "El inicio de todo",
                numberEpisode: index + 1,
              ),
              Divider(),
            ]);
          },
        ),
      ),
    );
  }
}

class EpisodeWidget extends StatelessWidget {
  String nameEpisode;
  int numberEpisode;

  EpisodeWidget({
    required this.nameEpisode,
    required this.numberEpisode,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: MediaQuery.of(context).size.height * 0.2,
      color: Colors.amber,
      child: Stack(children: [
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.black.withOpacity(0.2),
            child: Column(
              children: [
                Text('$numberEpisode'),
                Text(nameEpisode),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
