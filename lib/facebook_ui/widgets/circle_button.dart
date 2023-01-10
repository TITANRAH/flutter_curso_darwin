import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final bool showBadge;
  const CircleButton({
    Key? key,
    required this.color,
    required this.iconData,
    this.showBadge = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: color,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
              size: 25,
            ),
          ),

          // en vez de usar ternario puedo usar este if
          if (showBadge)
            Positioned(
              right: 0,
              top: -3,
              child: Container(
                width: 13,
                height: 13,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(width: 3, color: Colors.white),
                ),
              ),
            )
          // posicione el punto rojo con esto

          // : Container(

          //   // le di height cero para que el icono que usara este badge mantenga la alineacion
          //     height: 0,
          //   )
        ],
      ),
    );
  }
}
