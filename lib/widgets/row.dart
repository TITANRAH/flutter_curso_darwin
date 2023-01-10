import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class myRow extends StatelessWidget {
  const myRow({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: const TextStyle(color: Colors.black),
      child: Container(
        alignment: Alignment.centerLeft,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.end
          // me permite alinear los elementos mas pequeños que contenga el row
          // en sentido vertical
          // si usara strech los elementos ocuparan todo el espcio posible
          // independiente del center
          crossAxisAlignment: CrossAxisAlignment.center,

          // si uso MainAxisSize.min ya no ocupara el ancho completo
          // si no solo el ancho que tienen los elementos hijos
          // mainAxisSize: MainAxisSize.min,
          children: const [
            // Expanded(
            //   flex: 2,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.red,
            //   ),
            // ),
            // Expanded(
            //   flex: 3,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.blue,
            //   ),
            // ),
            // Expanded(
            //   flex: 1,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.yellow,
            //   ),
            // ),

            // Flexible(
            //   fit: FlexFit.tight,
            //   child: Container(
            //     width: 50,
            //     height: 50,
            //     color: Colors.blue,
            //   ),
            // ),

            // Flexible(
            //   child: Container(
            //     width: 170,
            //     height: 50,
            //     color: Colors.red,
            //   ),
            // ),

            // esto detecta el overflow y evita el error ya que adecua el container
            // al espacio disponible

            // Flexible(
            //   flex: 3,
            //   child: Container(
            //     width: 320,
            //     height: 50,
            //     color: Colors.yellow,
            //   ),
            // ),

            // si el ancho de la pantalla da para que se vean todos con espacio
            // aplicara los tamaños si la pantalla se achica se veran uno al lado
            // del otro y de igual tamaño
            Flexible(
              child: FlutterLogo(
                size: 200,
              ),
            ),
            Flexible(
              flex: 2,
              child: FlutterLogo(
                size: 250,
              ),
            ),

            Flexible(
              child: FlutterLogo(
                size: 350,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
