import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first-name': 'Arthur',
      'last-name': 'Chavez',
      'email': 'arthurchavez@gmail.com',
      'password': 'arthurchavez1234',
      'role': 'Admin',
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del Usuario',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del Usuario',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  const CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del Usuario',
                    obscureText: true,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    child: const SizedBox(
                      child: Center(
                        child: Text('Guardar'),
                      ),
                    ),
                    onPressed: () {
                      FocusScope.of(context)
                          .requestFocus(FocusNode()); //Desactivar Teclado

                      if (!myFormKey.currentState!.validate()) {
                        print('Formulario no valido');
                        return;
                      }
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
