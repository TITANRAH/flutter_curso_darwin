import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MyImages extends StatelessWidget {
  const MyImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 350,
          height: 500,
          color: Colors.grey,
          child:
              // puedo usar esta dependencia que lo hace mas facil
              // el tema del progrees indicador
              CachedNetworkImage(
            imageUrl: "https://www.pngall.com/wp-content/uploads/12/Dragon-Ball-Z-Series-PNG-Image.png",
            placeholder: (_, __) => const Center(child: CircularProgressIndicator()),
            errorWidget: (_, __, ___) => const Icon(Icons.error),
          ),

          // child: Image.network(
          //   'https://www.pngall.com/wp-content/uploads/12/Dragon-Ball-Z-Series-PNG-Image.png',
          //   loadingBuilder: (_, child, event) {
          //     if (event == null) {
          //       return child;
          //     }
          //     return const Center(
          //       child: CircularProgressIndicator(),
          //     );
          //   },
          // )
          // child: Image.asset(
          //   'assets/images/goku.png',

          // requiere que el asset se declare en pubspec
          // box fit hace que ocupe todo la altura definida con el heigth
          // lo mismo seria para widgt
          // fit: BoxFit.fill,

          // fit heigth hace que no se deforme y que ocupe el maximo de altura
          // pero se escapa hacia los lados por obviedad
          // fit: BoxFit.fitHeight,

          // contain hace que ocupe el ancho y alto establecido
          // fit: BoxFit.contain,
          // ),
        ),
      ),
    );
  }
}
