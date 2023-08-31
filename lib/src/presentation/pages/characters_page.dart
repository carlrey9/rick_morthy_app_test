import 'package:flutter/material.dart';

class CharactersPage extends StatelessWidget {
  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Characters")),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              CharacterWidget(
                isAlive: true,
                nameCharacter: "morthy",
                urlImage: "http://www.sdfsdf.jpg",
              ),
              Divider(),
            ]);
          },
        ),
      ),
    );
  }
}

class CharacterWidget extends StatelessWidget {
  String nameCharacter;
  String urlImage;
  bool isAlive;

  CharacterWidget({
    required this.nameCharacter,
    required this.urlImage,
    required this.isAlive,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      height: MediaQuery.of(context).size.height * 0.5,
      color: Colors.green,
      child: Stack(children: [
        Image(
          image: NetworkImage(urlImage),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.black.withOpacity(0.2),
            child: Column(
              children: [
                Text(nameCharacter),
                Text(isAlive ? "Alive" : "Death")
              ],
            ),
          ),
        )
      ]),
    );
  }
}
