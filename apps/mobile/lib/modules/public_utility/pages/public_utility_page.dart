import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:itourism_mobile/config/i18n.dart';
import 'package:localization/localization.dart';

import '../components/public_utility_card.dart';
import '../controllers/public_utility_controller.dart';

class PublicUtilityPage extends StatelessWidget {
  final PublicUtilityController publicUtilityController =
      Modular.get<PublicUtilityController>();

  PublicUtilityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(I18nWords.publicUtilityPageTitle.i18n()),
        ),
        body: RefreshIndicator(
          onRefresh: publicUtilityController.findAll,
          child: Observer(
            builder: (context) {
              if (publicUtilityController.loading &&
                  publicUtilityController.publicUtilities.isEmpty) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }

              if (publicUtilityController.publicUtilities.isEmpty) {
                return Center(
                  child: Text(
                    I18nWords.publicUtilityPageNoData.i18n(),
                  ),
                );
              }

              return ListView.builder(
                itemCount: publicUtilityController.publicUtilities.length,
                itemBuilder: (context, index) {
                  final utility =
                      publicUtilityController.publicUtilities[index];

                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PublicUtilityCard(
                      title: utility.name,
                      subtitle: utility.description,
                      latitute: utility.latitude,
                      longitude: utility.longitude,
                      telephone: utility.telephone,
                      onTap: () {
                        Modular.to.pushNamed(
                          '/maps/?title=${utility.name}',
                          arguments: CameraPosition(
                            target: LatLng(
                              utility.latitude,
                              utility.longitude,
                            ),
                            zoom: 16,
                          ),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ));
  }
}
