import 'package:flutter/material.dart';


class MyText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Text(
          'AKJSDJASJDASJDSAJDSAD'
          'AKDJADKASDKJASKDJAKJSD',
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
