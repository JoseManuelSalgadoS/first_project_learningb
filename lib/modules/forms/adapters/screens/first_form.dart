import 'package:first_project_learningb/kernel/validations/validations.dart';
import 'package:flutter/material.dart';

class FirstForm extends StatefulWidget {
  const FirstForm({super.key});

  @override
  State<FirstForm> createState() => _FirstFormState();
}

class _FirstFormState extends State<FirstForm> {
  final _formkey = GlobalKey<FormState>();
  bool _isButtonDisabled = true;
  final TextEditingController _fullname = TextEditingController(text: '');
  final TextEditingController _age = TextEditingController(text: '');
  final TextEditingController _email = TextEditingController(text: '');
  final TextEditingController _password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
              key: _formkey,
              onChanged: () {
                setState(() {
                  _isButtonDisabled = !_formkey.currentState!.validate();
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(children: <Container>[
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    child: Image.asset(
                      'assets/images/logo-utez.png',
                      width: 200,
                      height: 200,
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(bottom: 16),
                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //         labelText: 'Nombre Completo',
                  //         hintText: 'José Manuel Salgado Salgado'),
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Campo Obligatorio';
                  //       } else {
                  //         return null;
                  //       }
                  //     },
                  //     keyboardType: TextInputType.name,
                  //     controller: _fullname,
                  //   ),
                  // ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Email', hintText: 'example@gmail.com'),
                      validator: (value) {
                        RegExp regex = RegExp(Validations.email);
                        if (value == null || value.isEmpty) {
                          return 'campo obligatorio';
                        } else if (!regex.hasMatch(value)) {
                          return 'Introduce un correo válido';
                        }
                        return null;
                      },
                      keyboardType: TextInputType.emailAddress,
                      controller: _email,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Contraseña'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo Obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      controller: _password,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Repite la Contraseña'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Campo Obligatorio';
                        } else {
                          return null;
                        }
                      },
                      keyboardType: TextInputType.visiblePassword,
                      controller: _password,
                    ),
                  ),
                  // Container(
                  //   margin: const EdgeInsets.only(bottom: 16),
                  //   child: TextFormField(
                  //     decoration: const InputDecoration(
                  //         labelText: 'Edad', hintText: '22'),
                  //     validator: (value) {
                  //       if (value!.isEmpty) {
                  //         return 'Campo Obligatorio';
                  //       } else {
                  //         return null;
                  //       }
                  //     },
                  //     keyboardType: TextInputType.number,
                  //     controller: _age,
                  //   ),
                  // ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: ElevatedButton(
                        onPressed: _isButtonDisabled
                            ? null
                            : () {
                                print(
                                    '${_fullname.text} ${_age.value} ${_email.value}');
                              },
                        child: const Text('Registrar')),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: const Text('¿No tienes una cuenta?'),
                  )
                ]),
              )),
        ),
      ),
    );
  }
}
