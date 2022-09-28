import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class ImageCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageUrl;
  final Function()? onTap;

  const ImageCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: imageUrl,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 12 / 9,
                child: CachedNetworkImage(
                  imageUrl: imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                title: Text(title),
                subtitle: Text(subtitle, maxLines: 4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
