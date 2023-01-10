import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(color: Colors.black),
        child: Center(
          // al colocar este container el stack toma como maximo las medidas
          // del container
          child: Container(
            width: 400,
            height: 500,
            color: Colors.grey,
            child: Stack(
              // alignment: Alignment.topLeft,

              // usaremos alignment direccional y envolveremos todo el widget en directionaliti
              alignment: Alignment.center,
              children: [
                // para posicionar este container verde arriba es se encierra con positioned
                // dentro del stack obviamente y luego el parametro top
                Positioned.fill(
                  // AL DEFINIR TOP Y BOTTOM DEFINIMOS LA ALTURA DE LOS HIJOS FINALMENTE
                  // SI LE PONGO CERO BOTTOM Y TOP OCUPARA TODA LA ALTURA POSIBLE
                  // si pongo izquierda derecha arriba abajo 0 el container ocupara todo el espacio posible
                  // puedo poner cero en top right left bottom o poner .fill y hace lo mismo
                  // top: 0,
                  // bottom: 0,
                  // left: 0,
                  // right: 0,
                  // EL ANCHO DEL CONTAINER ESTE CASO SE CALCULA EN BASE AL TAMAÑO
                  // DE LOS HIJOS
                  child: Container(
                    // height: 100,
                    color: Colors.green,
                    child: Text('GREEN'),
                  ),
                ),
                Positioned(
                  // pueden ser valores negativos tambien 
                  right: 0,
                  child: Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                const Positioned(
                  bottom: 0,
                  child: Text(
                    'hola',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
