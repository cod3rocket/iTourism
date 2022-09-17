import 'package:flutter/material.dart';

import 'package:itourism_mobile/config/i18n.dart';
import 'package:itourism_mobile/modules/attractions/models/attraction_model.dart';
import 'package:localization/localization.dart';

class SelectAttractionType extends StatelessWidget {
  final Function(AttractionType) onSelected;
  final AttractionType? selectedType;

  _selectIcon(AttractionType attractionType) {
    switch (attractionType) {
      case AttractionType.attraction:
        return Icons.location_on;
      case AttractionType.bars:
        return Icons.local_bar;
      case AttractionType.hotel:
        return Icons.hotel;
      case AttractionType.restaurants:
        return Icons.restaurant;
      default:
        return Icons.location_city;
    }
  }

  String _attractionTypeLabel(AttractionType attractionType) {
    switch (attractionType) {
      case AttractionType.bars:
        return I18nWords.attractionTypeBars;
      case AttractionType.hotel:
        return I18nWords.attractionTypeHotel;
      case AttractionType.restaurants:
        return I18nWords.attractionTypeRestaurants;
      default:
        return I18nWords.attractionTypeAttraction;
    }
  }

  const SelectAttractionType({
    super.key,
    required this.onSelected,
    required this.selectedType,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Select attraction type',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: 50,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: AttractionType.values.length,
            itemBuilder: (context, index) {
              final type = AttractionType.values[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: FilterChip(
                  label: Text(_attractionTypeLabel(type).i18n()),
                  avatar: CircleAvatar(
                    child: Icon(_selectIcon(type)),
                  ),
                  showCheckmark: false,
                  selected: selectedType == type,
                  onSelected: (selected) {
                    if (selected) {
                      onSelected(type);
                    }
                  },
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
