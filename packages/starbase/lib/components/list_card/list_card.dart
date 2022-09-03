import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ListCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final num rate;
  final Function()? onTap;

  final BorderRadius _borderRadius = const BorderRadius.all(
    Radius.circular(8),
  );

  const ListCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.rate,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: _borderRadius,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      height: 116,
      child: InkWell(
        onTap: onTap,
        child: ClipRRect(
          clipBehavior: Clip.antiAlias,
          borderRadius: _borderRadius,
          child: Stack(
            children: [
              Positioned(
                left: 0.0,
                top: 0.0,
                bottom: 0.0,
                child: ClipRRect(
                  clipBehavior: Clip.antiAlias,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    topLeft: Radius.circular(8),
                  ),
                  child: CachedNetworkImage(
                    width: 130.0,
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
                    borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                    color: theme.colorScheme.primary.withOpacity(0.1),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                left: 130,
                bottom: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        title: Text(title),
                        subtitle: Text(subtitle, maxLines: 2),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                        ),
                        child: Row(
                          children: [
                            Icon(
                              Icons.star,
                              size: 16,
                              color: theme.iconTheme.color,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              rate.toDouble().toString(),
                              style: theme.textTheme.bodyText2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
