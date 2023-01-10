import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: DefaultTextStyle(
        style: TextStyle(),
        child: Center(
          child: DefaultTextStyle(
            style: TextStyle(),
            child: Center(
              child: Container(
                width: 200.0,
                height: 200.0,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,

                  // se puede utilizar linear o radial
                  // gradient:  
                  //   end: Alignment.bottomRight,
                  //   begin: Alignment.topLeft,
                  //   stops: [
                  //     0.15,
                  //     0.2,
                  //     0.6,
                  //   ],
                  // ),

                  gradient: RadialGradient(colors: [
                    Colors.white,
                    Colors.blue.withOpacity(0.2),
                    Colors.blue,
                  ], stops: const [
                    0.6,
                    0.95,
                    1,
                  ]),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red.withOpacity(
                        .5,
                      ),
                      blurRadius: 10,
                      offset: Offset(5, 5),
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(
                        .5,
                      ),
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                    ),
                  ],
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: const Text(
                  'SERGIO MIRANDA',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
