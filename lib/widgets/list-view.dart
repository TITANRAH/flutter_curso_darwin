import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_demo/widgets/list_view_builder.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // SAFE AREA EVITA QUE EL CONTENID ESTE POR DETRAS DEL STATUS BAR
      // Y POR DETRAS DEL MENU INFERIOR
      // ENTONCS ESTATUS BAR QUEDA POR ENCIMAY EL MENU INFERIOR IGUAL
      body: SafeArea(
        // ESTO DEJA QUE ARRIBA EL CONTENIDO PUEDA PSAR POR ENCIMA DEL STATUS BAR
        // top: false,
        child: ListView(
          children: [
            IconButton(
              onPressed: () {
                // creo una ruta y luego se la paso al navigator
                final route = MaterialPageRoute(
                  builder: (_) => MyListViewBuilder(),
                );
                Navigator.push(context, route);
              },
              icon: const Icon(Icons.login),
            ),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  18,
                  (index) => Container(
                    height: 100,
                    width: 100,
                    color: Colors.primaries[index],
                    alignment: Alignment.center,
                    child: Text('$index'),
                  ),
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              // // desactivar efecto de rsorte
              // physics: ClampingScrollPhysics(),

              // HACEMOS QUE EL TECLADO DESAPAREZCA AL HACER SCROLL CUABDO HAY TEXTFIELD ARRIBA
              // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              children: List.generate(
                5,
                (index) => Container(
                  margin: EdgeInsets.all(5),
                  height: 50,
                  color: Colors.blue,
                ),
              ),
            ),
            Container(
              color: Colors.red,
              height: 150,
            ),
            Container(
              color: Colors.green,
              height: 450,
            )
          ],
        ),
      ),
    );
  }
}
