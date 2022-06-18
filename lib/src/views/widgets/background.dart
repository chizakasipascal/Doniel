import 'package:flutter/material.dart';

import '../../const/assets.dart';

class BuildBackground extends StatelessWidget {
  final String image;

  final bool viewLogo;
  const BuildBackground(
      {Key? key, this.image = Assets.background, this.viewLogo = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        ConstrainedBox(
          constraints: const BoxConstraints.expand(),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
