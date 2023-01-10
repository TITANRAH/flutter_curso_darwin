import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  const Avatar({
    super.key,
    required this.size,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    // para imagen circular mejor usar clipRRect
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size * 0.5),
        child: Image.asset(
          asset,
          width: size,
          height: size,
        ),
      ),
    );
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
