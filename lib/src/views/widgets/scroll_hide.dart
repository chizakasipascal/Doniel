import 'package:flutter/material.dart';

class ScrolHide extends StatefulWidget {
  final Widget child;
  final ScrollController controller;
  final Duration duration;
  const ScrolHide({
    Key? key,
    required this.child,
    required this.controller,
    this.duration = const Duration(milliseconds: 1000),
  }) : super(key: key);

  @override
  State<ScrolHide> createState() => _ScrolHideState();
}

class _ScrolHideState extends State<ScrolHide> {
  bool isVisible = true;

  @override
  void initState() {
    widget.controller.addListener((listen));
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener((listen));
    widget.controller.dispose();
    super.dispose();
  }

  void listen() {
    if (widget.controller.position.pixels >= 100) {
      hide();
    } else {
      show();
    }
  }

  void show() {
    if (!isVisible) setState(() => isVisible = true);
  }

  void hide() {
    if (isVisible) setState(() => isVisible = false);
  }

  @override
  Widget build(BuildContext context) => AnimatedContainer(
        duration: widget.duration,
        curve: Curves.decelerate,
        height: isVisible ? kBottomNavigationBarHeight : 0,
        child: Wrap(
          children: [widget.child],
        ),
      );
}
