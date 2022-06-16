import 'package:flutter/material.dart';

class Carre extends StatelessWidget {
  const Carre({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final ScrollController controller;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        controller: controller,
        itemCount: 6,
        itemBuilder: (context, i) {
          return const ListTile(
            title: Text(
              "sss",
              style: TextStyle(color: Colors.red),
            ),
          );
        },
      ),
    );
  }
}
