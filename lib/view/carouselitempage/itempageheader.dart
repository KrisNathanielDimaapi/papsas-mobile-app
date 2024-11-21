import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SingleItemHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String imageAssetPath;
  final String category;
  final String title;
  final String description;
  @override
  final double maxExtent;
  @override
  final double minExtent;

  const SingleItemHeaderDelegate({
    required this.imageAssetPath,
    required this.description,
    required this.category,
    required this.title,
    required this.maxExtent,
    required this.minExtent,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      children: [Image.asset(imageAssetPath, fit: BoxFit.cover)],
    );
  }

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
  @override
  OverScrollHeaderStretchConfiguration get stretchConfiguration =>
      OverScrollHeaderStretchConfiguration();
}
