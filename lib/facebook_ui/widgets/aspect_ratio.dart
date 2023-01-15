import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          // esto le dara la altura al aspect ratio
          height: 100,
          child: AspectRatio(
            // poner 1 esto siempre dara un cuadrado de imagen en el dispositivo que sea
            // aspectRatio: 1,

            // 16/9 es para rectangulo
            aspectRatio: 16 / 9,
            child: Image.network(
              'https://www.fayerwayer.com/resizer/d-45oFR33AaPjg4hX2Qn1fX_ff4=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/P7XPD43J75HHDBGCMPS7T2PYVE.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
