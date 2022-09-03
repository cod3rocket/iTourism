import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AttractionsCarousel extends StatelessWidget {
  final String title;
  final String imageUrl;
  final num rate;
  final Function()? onTap;

  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(8),
  );

  const AttractionsCarousel({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.rate,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: _borderRadius,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4,
        ),
        width: 298,
        child: Stack(
          children: [
            ClipRRect(
              clipBehavior: Clip.antiAlias,
              borderRadius: _borderRadius,
              child: AspectRatio(
                aspectRatio: 10 / 9,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: _borderRadius,
                  gradient: const LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  title,
                  style: _theme.textTheme.titleLarge!.copyWith(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: _theme.primaryColor.withOpacity(0.7),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: _theme.iconTheme.size,
                          color: _theme.iconTheme.color,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          rate.toDouble().toString(),
                          style: _theme.textTheme.bodyText1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
