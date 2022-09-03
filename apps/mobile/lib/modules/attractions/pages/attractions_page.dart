import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:starbase/starbase.dart';

import '../controllers/attractions_controller.dart';

class AttractionsPage extends StatelessWidget {
  const AttractionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AttractionsController attractionsController =
        Modular.get<AttractionsController>();

    return Scaffold(
        appBar: AppBar(
          title: const Text('Locais'),
        ),
        body: RefreshIndicator(
          onRefresh: attractionsController.fetchAttractions,
          child: Observer(
            builder: (context) {
              if (attractionsController.loading &&
                  attractionsController.attractions.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (attractionsController.attractions.isEmpty) {
                return const Center(
                  child: Text('Nenhum local encontrado'),
                );
              }

              return SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      child: Row(
                        children: const [
                          Text(
                            'Destaques',
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount:
                            attractionsController.featuredAttractions.length,
                        itemBuilder: (context, index) {
                          final featuredAttractions =
                              attractionsController.featuredAttractions[index];

                          return Column(
                            children: [
                              AttractionsCarousel(
                                title: featuredAttractions.name,
                                imageUrl: featuredAttractions.banner,
                                rate: featuredAttractions.rate,
                                onTap: () {
                                  Modular.to.pushNamed(
                                    '/attractions/${featuredAttractions.id}',
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    Flexible(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: attractionsController.attractions.length,
                        itemBuilder: (context, index) {
                          final attractions =
                              attractionsController.attractions[index];

                          return ListCard(
                            title: attractions.name,
                            subtitle: attractions.description,
                            imageUrl: attractions.banner,
                            rate: attractions.rate,
                            onTap: () {
                              Modular.to.pushNamed(
                                '/attractions/${attractions.id}',
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ));
  }
}
