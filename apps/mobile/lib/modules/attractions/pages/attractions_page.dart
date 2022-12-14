import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:itourism_mobile/config/i18n.dart';
import 'package:itourism_mobile/modules/attractions/components/select_attraction_type.dart';
import 'package:localization/localization.dart';
import 'package:starbase/starbase.dart';

import '../controllers/attractions_controller.dart';

class AttractionsPage extends StatelessWidget {
  final AttractionsController attractionsController =
      Modular.get<AttractionsController>();

  AttractionsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(I18nWords.attractionsPageTitle.i18n()),
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
                return Center(
                  child: Text(I18nWords.attractionsPageNoData.i18n()),
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
                        children: [
                          Text(
                            I18nWords.attractionsPageHighlights.i18n(),
                            style: Theme.of(context).textTheme.headline6,
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
                              Hero(
                                tag: featuredAttractions.id,
                                child: AttractionsCarousel(
                                  title: featuredAttractions.name,
                                  imageUrl: featuredAttractions.banner,
                                  rate: featuredAttractions.rate,
                                  onTap: () {
                                    Modular.to.pushNamed(
                                      '/attractions/${featuredAttractions.id}',
                                      arguments: featuredAttractions,
                                    );
                                  },
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                    SelectAttractionType(
                      selectedType: attractionsController.selectedType,
                      onSelected: attractionsController.selectAttractionType,
                    ),
                    Flexible(
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            attractionsController.attractionsByType.length,
                        itemBuilder: (context, index) {
                          final attractions =
                              attractionsController.attractionsByType[index];

                          return ListCard(
                            title: attractions.name,
                            subtitle: attractions.description,
                            imageUrl: attractions.banner,
                            rate: attractions.rate,
                            onTap: () => {
                              Modular.to.pushNamed(
                                '/attractions/${attractions.id}',
                                arguments: attractions,
                              ),
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
