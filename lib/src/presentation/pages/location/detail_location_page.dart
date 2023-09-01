import 'package:flutter/material.dart';
import 'package:rick_and_morthy_app_test/src/domain/models/location/location_model.dart';
import 'package:rick_and_morthy_app_test/src/presentation/widgets/square_info_widget.dart';

import '../../../data/repositories/rick_morthy_api_repository.dart';
import '../../widgets/loading_widget.dart';

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
            Divider(),
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              child: Text("Residents in this location",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                itemCount: locationModel.residents.length,
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
                        _getUrlImage(locationModel.residents[index]),
                        errorBuilder: (context, error, stackTrace) {
                          return Icon(Icons.wifi_off_rounded);
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
      ),
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
