import 'package:flutter/material.dart';

class ErrWidget extends StatelessWidget {
  String error;
  Function? function;
  ErrWidget({
    required this.error,
    this.function,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            width: double.infinity,
            height: 250,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.red.withOpacity(0.2)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.mood_bad_rounded,
                  size: 50,
                ),
                Center(
                    child: Text(
                  "Error Loading the data, \nplease try again later",
                  style: TextStyle(fontSize: 20),
                )),
                IconButton(
                    onPressed: () {
                      if (function != null) {
                        function!();
                      }
                    },
                    icon: Icon(
                      Icons.refresh,
                      size: 50,
                    ))
              ],
            )));
  }
}
