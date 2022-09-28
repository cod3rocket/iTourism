import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../maps/components/maps_component.dart';

class PublicUtilityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String? telephone;
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
    this.telephone,
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
              onTap: () async {
                if (telephone != null) {
                  final url = Uri.parse('tel:$telephone');

                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  }
                }
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
