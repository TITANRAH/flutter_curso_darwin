import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_demo/facebook_ui/widgets/circle_button.dart';
import 'package:native_demo/icons/custom_icons.dart';

class QuickAtentions extends StatelessWidget {
  const QuickAtentions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        QuickButton(
          color: Color(0xffAFDEA8),
          iconData: Icons.photo,
        ),
      ],
    );
  }
}

class QuickButton extends StatelessWidget {
  final IconData iconData;
  final Color color;
  const QuickButton({
    Key? key,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(255, 222, 230, 219),
      ),
      child: Row(
        children: [
          CircleButton(
            color: color,
            iconData: iconData,
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            'Galery',
            style: TextStyle(
              color: Color(0xff8DBF87),
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
