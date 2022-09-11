import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../maps/components/maps_component.dart';

class PublicUtilityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final double latitute;
  final double longitude;

  final Function()? onTap;

  const PublicUtilityCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.latitute,
    required this.longitude,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: [
          Column(
            children: [
              MapComponent(
                cameraPosition: CameraPosition(
                  target: LatLng(
                    latitute,
                    longitude,
                  ),
                  zoom: 16,
                ),
                onTap: onTap,
              ),
              ListTile(
                title: Text(title),
                subtitle: Text(subtitle, maxLines: 4),
              ),
            ],
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: InkWell(
              onTap: () {
                // TODO
                print('Redirect tel not implemented');
              },
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Icon(
                  Icons.phone_callback_rounded,
                  size: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
