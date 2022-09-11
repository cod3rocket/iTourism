import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itourism_mobile/modules/maps/components/maps_component.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/attraction_model.dart';

class AttractionPage extends StatefulWidget {
  final Attraction attraction;

  const AttractionPage({super.key, required this.attraction});

  @override
  State<AttractionPage> createState() => _AttractionPageState();
}

class _AttractionPageState extends State<AttractionPage> {
  final PageController _pageController = PageController(keepPage: true);

  Widget _divider() => const Padding(
        padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
        child: Divider(),
      );

  _cameraPosition() => CameraPosition(
        target: LatLng(widget.attraction.latitude, widget.attraction.longitude),
        zoom: 16,
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
              background: Stack(
                children: [
                  Hero(
                    tag: widget.attraction.id,
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: widget.attraction.gallery.length,
                      itemBuilder: (context, index) {
                        final image = widget.attraction.gallery[index];
                        return CachedNetworkImage(
                          imageUrl: image,
                          fit: BoxFit.cover,
                          placeholder: (context, url) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                        );
                      },
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: SmoothPageIndicator(
                          controller: _pageController,
                          count: widget.attraction.gallery.length,
                          effect: const ExpandingDotsEffect(
                            dotHeight: 8,
                            dotWidth: 8,
                            activeDotColor: Colors.white,
                            dotColor: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.attraction.name,
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.location_on_outlined,
                            size: 16,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            widget.attraction.address,
                            maxLines: 2,
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
                      Text(
                        'Descrição',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        widget.attraction.description,
                        textAlign: TextAlign.justify,
                        maxLines: 4,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Localização',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      MapComponent(
                        onTap: () {
                          Modular.to.pushNamed(
                            '/maps/?title=${widget.attraction.name}',
                            arguments: CameraPosition(
                              target: LatLng(
                                widget.attraction.latitude,
                                widget.attraction.longitude,
                              ),
                              zoom: 16,
                            ),
                          );
                        },
                        cameraPosition: _cameraPosition(),
                        markers: {
                          Marker(
                            markerId: MarkerId(widget.attraction.name),
                            position: LatLng(
                              widget.attraction.latitude,
                              widget.attraction.longitude,
                            ),
                          ),
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
