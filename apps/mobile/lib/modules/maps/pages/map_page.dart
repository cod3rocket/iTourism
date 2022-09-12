import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/map_controller.dart';

class MapPage extends StatelessWidget {
  final String title;
  final CameraPosition cameraPosition;

  final MapController controller = Modular.get<MapController>();

  MapPage({super.key, required this.title, required this.cameraPosition});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      floatingActionButton: FloatingActionButton(
        tooltip: 'Abrir no Google Maps',
        child: const Icon(Icons.location_on),
        onPressed: () => controller.openInGoogleMaps(cameraPosition),
      ),
      body: GoogleMap(
        onMapCreated: controller.onMapCreated,
        markers: {
          Marker(
            markerId: MarkerId(title),
            position: cameraPosition.target,
          ),
        },
        initialCameraPosition: cameraPosition,
      ),
    );
  }
}
