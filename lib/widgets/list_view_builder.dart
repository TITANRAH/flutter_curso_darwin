import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyListViewBuilder extends StatelessWidget {
  const MyListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    final names = ['Darwin', 'Lulu', 'Sergio'];

    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (_, int index) {
          final name = names[index];
          print('fuego');
          return Container(
            height: 100,
            margin: const EdgeInsets.all(5),
            alignment: Alignment.center,
            child: Text(name),
          );
        },
        itemCount: names.length,
        separatorBuilder: (_, index) {
          return Row(
            // creamos la lista 
            // ponemos dos container dentro de un Row 
            // le damos un alto a cada container 
            // le damos un expanded a cada Contain999ijer
            // ponemos un texto al medio con el names index .lenght
            children: [
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(names[index].length.toString()),
              ),
              Expanded(
                child: Container(
                  height: 2,
                  color: Colors.black,
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
