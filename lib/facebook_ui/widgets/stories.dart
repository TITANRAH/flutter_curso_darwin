import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:native_demo/facebook_ui/widgets/widgets.dart';
import 'package:native_demo/models/story.dart';

final _stories = [
  // cree una clase llamada Story y la importe aqui

  // esto ya no es un mapa es una lista de tipo story
  // por lo que ya no se usa con corchets al no ser un map
  Story(
    bg: "assets/wallpapers/1.jpeg",
    avatar: 'assets/users/1.jpg',
    username: 'Consu',
  ),
  Story(
    bg: 'assets/wallpapers/2.jpeg',
    avatar: 'assets/users/2.jpg',
    username: 'Alina',
  ),
  Story(
    bg: 'assets/wallpapers/3.jpeg',
    avatar: 'assets/users/3.jpg',
    username: 'Javiera',
  ),
  Story(
    bg: 'assets/wallpapers/4.jpeg',
    avatar: 'assets/users/4.jpg',
    username: 'El tio tia',
  ),
  Story(
    bg: 'assets/wallpapers/5.jpeg',
    avatar: 'assets/users/5.jpg',
    username: 'New Sergio',
  )
];

class Stories extends StatelessWidget {
  const Stories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          final story = _stories[index];
          // importo story item y al tener una lista horizontal puedo parametrizarla
          return StoryItem(
            story: story,
            // este campo isFirst es un campo booleano donde detecto el
            // primer elemento de la lista y le doy un margen left de 25
            // si no de 0
            isFirst: index == 0,
          );
        },
        itemCount: _stories.length,
      ),
    );
  }
}

