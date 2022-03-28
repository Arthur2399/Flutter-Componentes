import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const ['Flutter', 'Angular', 'Django', 'PostgreSql'];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('List View type 1'),
        ),
        body: ListView(
          children: [
            ...options //imprime todos los elemento de la lista
                .map((code) => ListTile(
                      title: Text(code),
                      trailing: const Icon(Icons
                          .arrow_forward_ios_outlined), // Icono de la derecha
                    ))
                .toList(),
          ],
        ));
  }
}
