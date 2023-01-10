import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import '../icons/custom_icons.dart';

class MyIcons extends StatelessWidget {
  const MyIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            // CupertinoActivityIndicator(),
            // CupertinoSearchTextField(),
            Icon(
              // puedo usar iconos estilo cupertino para ios
              // aparece un signo de interrogacion pero solo por que me equivoque en los nombres
              CustomIcons.search,
              size: 100,
              color: Colors.blueAccent,
              // esto es para accesibilidad esto es una configuracion en
              // el equipo
              semanticLabel: 'icono reloj',
            ),
          ],
        ),
      ),
    );
  }
}
