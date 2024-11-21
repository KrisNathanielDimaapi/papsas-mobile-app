import 'package:flutter/material.dart';
import 'package:appdev/view/carouselitempage/itempage.dart';

class HomeSliderItem extends StatelessWidget {
  final bool isActive;
  final String imageAssetPath;
  final String category;
  final String title;
  final String description;

  const HomeSliderItem({
    super.key,
    required this.isActive,
    required this.imageAssetPath,
    required this.category,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => SingleItemPage(
                        imageAssetPath: imageAssetPath,
                        description: description,
                        title: title,
                        category: category,
                      )));
        },
        child: FractionallySizedBox(
          widthFactor: 1.08,
          child: AnimatedScale(
            duration: const Duration(milliseconds: 400),
            scale: isActive ? 1 : 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Container(
                    color: Colors.red,
                  ),
                  Image.asset(
                    imageAssetPath,
                    fit: BoxFit.cover,
                    width: double.maxFinite,
                    height: double.maxFinite,
                  ),
                  Positioned(
                    top: 20,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 138, 252),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 8.0,
                          vertical: 4.0,
                        ),
                        child: Text(
                          category,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const Column(
                    children: [],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
