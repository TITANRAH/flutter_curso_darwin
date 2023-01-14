import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_demo/models/story.dart';

final _stories = [
  // cree una clase llamada Story y la importe aqui

  // esto ya no es un mapa es una lista de tipo story
  // por lo que ya no se usa con corchets al no ser un map
  Story(
    bg: 'assets/wallpapers/1.jpg',
    avatar: 'assets/users/1.jpg',
    username: 'Sergio',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpg',
    avatar: 'assets/users/2.jpg',
    username: 'Sergio',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpg',
    avatar: 'assets/users/3.jpg',
    username: 'Sergio',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpg',
    avatar: 'assets/users/4.jpg',
    username: 'Sergio',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpg',
    avatar: 'assets/users/5.jpg',
    username: 'Sergio',
  )
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          return Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 80,
              // como el sizebox padre mide 200 al poner double infiniti
              // ocupara el espacio de altura dado osea 200
              height: double.infinity,
              color: Colors.grey);
        },
        itemCount: _stories.length,
      ),
    );
  }
}
