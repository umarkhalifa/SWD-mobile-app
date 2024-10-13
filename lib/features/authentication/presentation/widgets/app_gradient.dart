import 'package:flutter/material.dart';
import 'package:soft_web/configs/assets.gen.dart';
class AppGradient extends StatelessWidget {
  final Widget child;
  final AppBar? appBar;

  const AppGradient({super.key, required this.child, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: appBar,
      body: Stack(
        children: [
          Positioned(
            right: 0,
            child: Assets.icons.group1.image(),
          ),
          SafeArea(child: child),
        ],
      ),
    );
  }
}
