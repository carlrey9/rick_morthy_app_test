import 'package:flutter/material.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/character/character_model.dart';

class DetailCharacterPage extends StatelessWidget {
  CharacterModel characterModel;
  DetailCharacterPage({required this.characterModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(characterModel.name),
      ),
      body: _BodyCharacterDetail(),
    );
  }
}

class _BodyCharacterDetail extends StatelessWidget {
  const _BodyCharacterDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("DetailCharacterPage"),
    );
  }
}
