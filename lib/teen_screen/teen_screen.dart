import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
  const TweenScreen({super.key});

  @override
  State<TweenScreen> createState() => _TweenScreenState();
}

class _TweenScreenState extends State<TweenScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  late Animation<double> sizeTween;
  late Animation<double> opacityTween;
  late Animation<Color> colorTween;
  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    sizeTween =
        Tween<double>(begin: 300, end: 100).animate(animationController);
    animationController.forward();
    opacityTween =
        Tween<double>(begin: .5, end: 1).animate(animationController);
    colorTween = Tween<Color>(begin: Colors.red, end: Colors.yellow)
        .animate(animationController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: animationController,
          builder: (context, child) => Container(
              height: sizeTween.value,
              width: sizeTween.value,
              decoration: BoxDecoration(
                  color: colorTween.value.withOpacity(opacityTween.value))),
        ),
      ),
    );
  }
}
