import 'package:donieltheme/donieltheme.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView(
        controller: controller,
        children: [
          Card(
            child: Column(
              children: const [],
            ),
          )
        ],
      ),
    );
  }
}
