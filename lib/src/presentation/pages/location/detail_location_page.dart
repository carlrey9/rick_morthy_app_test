import 'package:flutter/material.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/square_info_widget.dart';

class DetailLocationPage extends StatelessWidget {
  LocationModel locationModel;
  DetailLocationPage({required this.locationModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(locationModel.name),
      ),
      body: _BodyLocation(locationModel: locationModel),
    );
  }
}

class _BodyLocation extends StatelessWidget {
  LocationModel locationModel;
  _BodyLocation({
    required this.locationModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SquareInfoWidget(
                color: Colors.amber.withOpacity(0.5),
                title: "Type",
                content: locationModel.type),
            SquareInfoWidget(
                color: Colors.amber.withOpacity(0.5),
                title: "dimension",
                content: locationModel.dimension),
            SquareInfoWidget(
                color: Colors.amber.withOpacity(0.5),
                title: "created",
                content: locationModel.created),
          ],
        ),
      ),
    );
  }
}
