import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProfileAnimation extends StatefulWidget {
  const ProfileAnimation({Key? key}) : super(key: key);

  @override
  _ProfileAnimationState createState() => _ProfileAnimationState();
}

class _ProfileAnimationState extends State<ProfileAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 3))
          ..repeat(reverse: true);

    _animation = Tween(begin: const Offset(0, 0.05), end: const Offset(0, 0))
        .animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: CircleAvatar(
        radius: 20.sw,
        backgroundImage: const AssetImage(
          "assets/images/nick_without.png",
        ),
      ),
    );
  }
}
