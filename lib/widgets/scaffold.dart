import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyScaffold extends StatelessWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // la dimencion del container se define segun sus elementos hijos
      body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey,
          child: Column(
            children: const [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    child: TextField(),
                  ),
                ),
              ),
              Text('jejeaklsjdkajsdkajkdlsadlsad'),
              SizedBox(
                height: 50,
              ),
            ],
          )),
      // me sirve para que no se redimencione el body al abrir el teclado
      // resizeToAvoidBottomInset: false,
      drawerEnableOpenDragGesture: false,
      endDrawerEnableOpenDragGesture: false,
      onEndDrawerChanged: (isOpen) {
        print(isOpen);
      },

      // extiendo el body y queda mas abajo el cetro
      // extendBody: true,

      // si quiero que el body este por encima del footer y appbar
      // extendBodyBehindAppBar: true,
      // puedo pasar cualquier widget
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          size: 30,
        ),
        onPressed: () {
          print('fuego');
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer(
        elevation: 20,
        child: Column(
          children: const [
            SizedBox(
              height: 40,
            ),
            Text(
              'text@test.cl',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      backgroundColor: const Color(0xffafbdc4),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.logout,
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
              )),
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        // puedo definir el estilo para las letras aca de una vez
        // o encerrando los widget con defaulttextstyle
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 19,
        ),
        elevation: 0,
        // con esto elijo el color de la sombra
        // shadowColor: Color,
        backgroundColor: Color(0xff546e7a),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Flutter',
            ),
            Text(
              'App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
