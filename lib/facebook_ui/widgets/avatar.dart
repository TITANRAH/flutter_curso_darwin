import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

// LO USAMOS EN STORY ITEM

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  final double borderWidth;
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
    this.borderWidth = 0,
  });

  @override
  Widget build(BuildContext context) {
    // para imagen circular mejor usar clipRRect
    // o container
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
        image: DecorationImage(
          image: AssetImage(asset),
        ),
      ),
    );
    // return Center(
    //   child: ClipRRect(
    //     borderRadius: BorderRadius.circular(size * 0.5),
    //     child: Image.asset(
    //       asset,
    //       width: size,
    //       height: size,
    //     ),
    //   ),
    // );
    // return Container(
    //   width: size,
    //   height: size,
    //   decoration: BoxDecoration(
    //     shape: BoxShape.circle,
    //     image: DecorationImage(
    //       image: AssetImage(asset),
    //     ),
    //   ),
    // );
  }
}
