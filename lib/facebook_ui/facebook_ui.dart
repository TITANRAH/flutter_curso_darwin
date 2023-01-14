import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:native_demo/facebook_ui/widgets/quick_actions.dart';
import 'package:native_demo/facebook_ui/widgets/stories.dart';
import './widgets/widgets.dart';

class FacebookUi extends StatelessWidget {
  const FacebookUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 150,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          color: Colors.blueAccent,
        ),
        actions: const [
          CircleButton(
            color: Color(0xffBEBDBE),
            iconData: Icons.search,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xffFB7376),
            iconData: Icons.notifications,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff7DB8FA),
            iconData: Icons.person_search_sharp,
            showBadge: true,
          ),
          SizedBox(
            width: 15,
          ),
          CircleButton(
            color: Color(0xff2E83D4),
            iconData: Icons.messenger,
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          WhatIsOnYourMind(),
          SizedBox(height: 30),
          QuickAtentions(),
          SizedBox(height: 30),
          Stories(),
        ],
      ),
    );
  }
}


// voy a svgrepo.com y descargo iconos de un solo color
// descargo los iconos elegidos y les cambio el nombre a algo mas intuitivo
// selecciono los iconos y los arrastro el fluttericons.com 
// luego le doy un nombre de clase tambien en textfield de fluttericon.com
// descargo el archivo en download 
// voy a assets y creo la carpeta icons, abro el archivo descargado de fluttericon.com
// y tomo el archivo de configuracion json y lo guardo en la carpeta creada en assets (icons)
// luego toimo el archivo Customsicons.ttf que trae el archivo descargado en fluttericon.com
// y tambien lo guardo en la carpeta generada en assets (icons)
// luego en lib creo otra carpeta llamda icons y dentro guardo el archivo .dart que viene en la descarga de fluttericon.com
// ahora pyedo usar esta clase y llamar a los iconos

// para sumar iconos o editar, entro a fluttericon.com e importo el json del proyecto 
// para poder editarlo, y vuelvo a descargar y reemplazar los archivos donde corresponda
// repito el proceso
