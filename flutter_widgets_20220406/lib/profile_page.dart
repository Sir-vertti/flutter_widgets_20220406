import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount + 5, // Ajusta el número total de elementos
      itemBuilder: (BuildContext context, int index) {
        if (index < itemCount) {
          // Mantén el comportamiento para los primeros elementos
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text('Person $index'),
            subtitle: Text('Person $index'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint('Click');
            },
          );
        } else {
          // Agrega nuevos elementos como desees
          return ListTile(
            leading: const Icon(Icons.add),
            title: Text('New Person ${index - itemCount}'),
            subtitle: Text('New Person ${index - itemCount}'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              debugPrint('New Person Click');
            },
          );
        }
      },
    );
  }
}
