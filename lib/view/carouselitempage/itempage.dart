import 'package:flutter/material.dart';
import 'package:appdev/view/carouselitempage/itempageheader.dart';
import 'package:appdev/view/widget/button.member.dart';

class SingleItemPage extends StatelessWidget {
  final String imageAssetPath;
  final String category;
  final String title;
  final String description;

  const SingleItemPage({
    super.key,
    required this.imageAssetPath,
    required this.category,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    final maxScreenSize = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => Navigator.pop(context, false))),
        body: CustomScrollView(
          slivers: [
            SliverPersistentHeader(
                delegate: SingleItemHeaderDelegate(
                    title: title,
                    category: category,
                    imageAssetPath: imageAssetPath,
                    description: description,
                    minExtent: topPadding + 56,
                    maxExtent: maxScreenSize / 2)),
            SliverToBoxAdapter(
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        title,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.red),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.justify,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const ButtonMember(),
                    ],
                  )),
            )
          ],
        ));
  }
}
