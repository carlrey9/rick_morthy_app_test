import 'package:flutter/material.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations")),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              LocationWidget(
                locationName: "La Tierra",
                type: "good",
              ),
              Divider(),
            ]);
          },
        ),
      ),
    );
  }
}

class LocationWidget extends StatelessWidget {
  String locationName;
  String type;

  LocationWidget({
    required this.locationName,
    required this.type,
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
                Text(locationName),
                Text(type),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
