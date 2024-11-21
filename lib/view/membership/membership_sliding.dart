import 'dart:async'; // Import this for the Timer
import 'package:appdev/view/membership/membeship_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:appdev/view/membership/membership_slider.dart';

class MemberSlider extends StatefulWidget {
  const MemberSlider({super.key});

  @override
  State<MemberSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<MemberSlider> {
  late final PageController _pageController;
  late final Timer _timer;

  int _pageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(viewportFraction: 0.8, initialPage: 1000);

    // Set up the timer for auto-play
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_pageController.hasClients) {
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
          onPageChanged: (value) {
            setState(() {
              _pageIndex = value % newsrItems.length;
            });
          },
          controller: _pageController,
          itemBuilder: (context, index) {
            final i = index % newsrItems.length;
            return HomeSliderItem(
              isActive: _pageIndex == i,
              imageAssetPath: newsrItems[i]['imageAssetPath']!,
              category: newsrItems[i]['category']!,
              title: newsrItems[i]['title']!,
              description: newsrItems[i]['description']!,
            );
          }),
    );
  }
}
