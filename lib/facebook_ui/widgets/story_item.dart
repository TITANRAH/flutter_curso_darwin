import 'package:flutter/cupertino.dart';

import '../../models/story.dart';
import 'avatar.dart';

// LO USO EN STORIES

class StoryItem extends StatelessWidget {
  const StoryItem({
    Key? key,
    required this.story,
    required this.isFirst,
  }) : super(key: key);

  // decimos que necesitamos una variable de tipo Story como parametro
  final Story story;
  final bool isFirst;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 90,
      margin: EdgeInsets.only(
        right: 15,
        left: isFirst ? 20 : 0,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 20,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(story.bg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  // importamos el widget avatar
                  child: Avatar(
                    borderWidth: 3,
                    size: 40,
                    asset: story.avatar,
                  ),
                )
              ],
            ),
          ),
          Text(
            story.username,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
