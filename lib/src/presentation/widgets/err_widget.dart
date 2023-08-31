import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {
  String error;
  ErrWidget({
    required this.error,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("error: $error");
  }
}
