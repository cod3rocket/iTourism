import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

import '../models/event_model.dart';

class EventPage extends StatelessWidget {
  final Event event;

  const EventPage({Key? key, required this.event}) : super(key: key);

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
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          event.name,
                          style: Theme.of(context).textTheme.headline1,
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: Colors.grey,
                              size: 24,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              event.address,
                              style: const TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          event.description,
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const Divider(),
                    const SizedBox(height: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Programação',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        const SizedBox(height: 8),
                      ],
                    )
                  ],
                ),
              )
            ]),
          ),
        ],
      ),
      //body: Column(
      //  children: [
      //    Stack(
      //      children: [
      //        Container(
      //          height: MediaQuery.of(context).size.width,
      //          decoration: BoxDecoration(
      //            borderRadius: BorderRadius.circular(30),
      //            boxShadow: [
      //              BoxShadow(
      //                color: Colors.black.withOpacity(0.2),
      //                blurRadius: 10,
      //                offset: const Offset(0, 10),
      //              ),
      //            ],
      //          ),
      //          child: ClipRRect(
      //            borderRadius: BorderRadius.circular(30),
      //            child: Hero(
      //              tag: event.banner,
      //              child: CachedNetworkImage(
      //                imageUrl: event.banner,
      //                fit: BoxFit.cover,
      //              ),
      //            ),
      //          ),
      //        ),
      //        Padding(
      //          padding: const EdgeInsets.symmetric(
      //            horizontal: 10,
      //            vertical: 40,
      //          ),
      //          child: Row(
      //            children: [
      //              IconButton(
      //                icon: const Icon(Icons.arrow_back),
      //                color: Colors.black,
      //                iconSize: 35,
      //                onPressed: () {
      //                  Modular.to.navigate('/events');
      //                },
      //              ),
      //            ],
      //          ),
      //        )
      //      ],
      //    )
      //  ],
      //),
    );
  }
}
