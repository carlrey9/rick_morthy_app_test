import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';
import 'package:rick_and_morthy_app_test/src/domain/providers/rick_morthy_providers.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/loading_widget.dart';

import '../../widgets/err_widget.dart';

class LocationsPage extends StatelessWidget {
  const LocationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations")),
      body: _BodyLocations(),
    );
  }
}

class _BodyLocations extends ConsumerWidget {
  const _BodyLocations({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locations = ref.watch(locationsProvider);

    return locations.when(
      data: ((List<LocationModel> data) {
        return Center(
            child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(children: [
              LocationWidget(locationModel: data[index]),
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

class LocationWidget extends StatelessWidget {
  LocationModel locationModel;

  LocationWidget({
    required this.locationModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.15,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.amber,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(locationModel.name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.05,
          ),
          Text(locationModel.type,
              style: const TextStyle(fontSize: 20, color: Colors.black))
        ],
      ),
    );
  }
}
