import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

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

    // si es verdadero es imagen de internet si no no
    final fromNetwork = asset.startsWith('http://') || asset.startsWith('https://');
    // por eso imagen provider sera el bool verdadero de fromnetwork o asset local en caso de que el booleano de falso
    final imageProvider = fromNetwork ? CachedNetworkImageProvider(asset) : AssetImage(asset);

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
          image: imageProvider as ImageProvider,
          fit: BoxFit.cover,
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
