import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_demo/facebook_ui/widgets/circle_button.dart';
import 'package:native_demo/icons/custom_icons.dart';

class QuickAtentions extends StatelessWidget {
  const QuickAtentions({super.key});

  @override
  Widget build(BuildContext context) {
    // wrap monta los elementos cuando no caben en las vistas
    // return Wrap(
    //   spacing: 20,
    //   runSpacing: 10,
    // alineacion de wrap
    // alignment: WrapAlignment.end,

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        // si los elementos no caben en una pantalla , escala los elementos
        // los achica o agranda segun el espacio que tenga
        // para solo escalar en caso de NO CABER uso fit boxfit.scaledown
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: const [
            QuickButton(
              label: 'Galery',
              color: Color(0xffAFDEA8),
              iconData: Icons.photo,
            ),
            SizedBox(width: 15),
            QuickButton(
              label: 'Tag Friends',
              color: Color.fromARGB(255, 114, 174, 206),
              iconData: Icons.person_add,
            ),
            SizedBox(width: 15),
            QuickButton(
              label: 'Tag Friends',
              color: Color.fromARGB(255, 192, 106, 96),
              iconData: Icons.video_camera_front,
            ),
          ],
        ),
      ),
    );
  }
}

// puedo dejar aqui los botones en caso de no usarlos en otros widget
class QuickButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final String label;
  const QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color.withOpacity(0.3),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleButton(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            label,
            style: TextStyle(
              color: color,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
