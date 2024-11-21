import 'package:flutter/material.dart';

class HomeHeading extends StatelessWidget {
  final String title;
  final Widget? trailing;
  const HomeHeading({super.key, required this.title, this.trailing});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall),
            const Spacer(),
            if (trailing != null) trailing!,
          ],
        ));
  }
}
