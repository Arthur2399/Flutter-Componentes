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
                  CustomInputField(
                    labelText: 'Nombre',
                    hintText: 'Nombre del Usuario',
                    formProperty: 'first-name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Apellido',
                    hintText: 'Apellido del Usuario',
                    formProperty: 'last-name',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Correo',
                    hintText: 'Correo del Usuario',
                    inputType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  CustomInputField(
                    labelText: 'Contraseña',
                    hintText: 'Contraseña del Usuario',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 30),
                  DropdownButtonFormField<String>(
                    items: const [
                      DropdownMenuItem(
                        value: 'Admin',
                        child: Text('Admin'),
                      ),
                      DropdownMenuItem(
                        value: 'SuperUser',
                        child: Text('SuperUser'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer',
                        child: Text('Developer'),
                      ),
                      DropdownMenuItem(
                        value: 'Developer Jr',
                        child: Text('Developer Jr'),
                      )
                    ],
                    onChanged: (value) {
                      print(value);
                      formValues['role'] = value ?? 'Admin';
                    },
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
                      print(formValues);
                    },
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
