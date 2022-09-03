import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../controllers/map_controller.dart';

class MapPage extends StatelessWidget {
  final String title;

  final MapController controller = Modular.get<MapController>();
  final LatLng _center = const LatLng(-23.1063049, -50.3908948);

  MapPage({super.key, this.title = 'MapPage'});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: GoogleMap(
        onMapCreated: controller.onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0,
        ),
      ),
    );
  }
}
