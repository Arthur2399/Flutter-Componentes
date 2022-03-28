import 'dart:io';

import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Text('Ok'),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false, // cerrar el dialogo al presionar afuera
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este es el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () => Navigator.pop(context)),
              TextButton(
                  child: const Text('Ok'),
                  onPressed: () => Navigator.pop(context))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(
                  'Alerta',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              onPressed: () => Platform.isAndroid
                  ? displayDialogAndroid(context) //Si es Android ejecuta esto
                  : displayDialogIOS(context)),
        ),
        floatingActionButton: FloatingActionButton(
          //backgroundColor: AppTheme.primary,
          child: const Icon(Icons.close),
          onPressed: (() => Navigator.pop(context)),
        ));
  }
}
