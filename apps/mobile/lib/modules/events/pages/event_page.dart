import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itourism_mobile/config/i18n.dart';
import 'package:itourism_mobile/modules/maps/components/maps_component.dart';
import 'package:localization/localization.dart';

import '../models/event_model.dart';

class EventPage extends StatelessWidget {
  final Event event;

  const EventPage({Key? key, required this.event}) : super(key: key);

  Widget _divider() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Divider(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: event.banner,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    CachedNetworkImage(
                      imageUrl: event.banner,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 10,
                            spreadRadius: 5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      event.name,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          color: Colors.grey,
                          size: 16,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          event.address,
                          style: Theme.of(context).textTheme.subtitle2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _divider(),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          I18nWords.eventsDetailsPageDescription.i18n(),
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Text(
                          event.description,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              _divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      I18nWords.eventsDetailsPageLocation.i18n(),
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    MapComponent(
                      onTap: () {
                        Modular.to.pushNamed(
                          '/maps/?title=${event.name}',
                          arguments: const CameraPosition(
                            target: LatLng(
                              0,
                              0,
                            ),
                            zoom: 4,
                          ),
                        );
                      },
                      cameraPosition:
                          const CameraPosition(target: LatLng(0, 0)),
                    ),
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
    );
  }
}
