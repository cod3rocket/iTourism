import 'package:flutter/services.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController {
  late String _darkMapStyle;
  late GoogleMapController mapController;

  MapController() {
    _loadMapStyles();
  }

  Future _loadMapStyles() async {
    _darkMapStyle = await rootBundle.loadString('assets/json/maps.json');
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_darkMapStyle);
  }
}
