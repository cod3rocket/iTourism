import 'package:flutter/services.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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

  Future<void> openInGoogleMaps(CameraPosition cameraPosition) async {
    final url = Uri.parse(
      'geo:${cameraPosition.target.latitude},${cameraPosition.target.longitude}?q=${cameraPosition.target.latitude},${cameraPosition.target.longitude}(Your+Location)',
    );

    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    }
  }
}
