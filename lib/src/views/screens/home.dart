import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        controller: controller,
        children: const [],
      ),
    );
  }
}
