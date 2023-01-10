import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MySingleScrollView extends StatelessWidget {
  const MySingleScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = List.generate(
      18,
      (index) => Container(
        height: 100,
        width: 100,
        color: Colors.primaries[index],
        child: Text('$index'),
        alignment: Alignment.center,
      ),
    );

    return Scaffold(
      body: SafeArea(
        // SAFE AREA HACE QUE EL HELLOW SE VEA Y BOTTOM HACE QUE LA LISTA
        // OCUPE TODA LA PANTALLA
        bottom: false,
        child: Column(
          children: [
            Container(
              height: 100,
              // TAMBIEN PODEMOS USAR EL SINGLE EN HORIZONTAL
              child: Row(
                children: [
                  FlutterLogo(
                    size: 90,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(8),
                      scrollDirection: Axis.horizontal,
                      // ESTO EVITA EL EFECTO DE RESORTE EN LAS LISTAS CON SINGLESCRROL
                      // physics: ClampingScrollPhysics(),
                      // ESTO HACE QUE SE REALICE EL EFECTO DE RESORTE TANTO EN ANDROID COMO
                      // IOS
                      // physics: BouncingScrollPhysics(),

                      // ESTO SE ADAPTA A LA PLTAFORMA , EN IOS SI VA A TENER RESORTE
                      // PERO NO EN ANDROID
                      // physics: AlwaysScrollableScrollPhysics(),
                      child: Row(children: colors),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                // CON ESTO ESCONDO EL TECLADO AUTOMATICAMENTE AL HACER SCROLL
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                padding: const EdgeInsets.all(8),
                // reverse MUESTRA EL FINAL DE LA LISTA DE ELEMENTOS
                // reverse: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(),
                    ),
                    ...colors
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
