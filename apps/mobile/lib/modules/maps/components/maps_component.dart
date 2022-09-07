import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapComponent extends StatefulWidget {
  final CameraPosition cameraPosition;
  final Set<Marker> markers;
  final Function()? onTap;

  const MapComponent(
      {super.key,
      required this.cameraPosition,
      this.markers = const {},
      this.onTap});

  @override
  State<MapComponent> createState() => _MapComponentState();
}

class _MapComponentState extends State<MapComponent> {
  late String _darkMapStyle;

  late GoogleMapController mapController;

  @override
  void initState() {
    super.initState();
    _loadMapStyles();
  }

  Future _loadMapStyles() async {
    _darkMapStyle = await rootBundle.loadString('assets/json/maps.json');
  }

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    mapController.setMapStyle(_darkMapStyle);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: SizedBox(
        height: 200,
        child: Card(
          clipBehavior: Clip.antiAlias,
          child: GoogleMap(
            onTap: (_) {
              widget.onTap!();
            },
            markers: widget.markers,
            onMapCreated: onMapCreated,
            zoomControlsEnabled: false,
            initialCameraPosition: widget.cameraPosition,
          ),
        ),
      ),
    );
  }
}
