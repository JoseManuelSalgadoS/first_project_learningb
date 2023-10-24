import 'package:flutter/material.dart';
import 'package:first_project_learningb/kernel/colors/colors_app.dart';


class Account extends StatelessWidget {
  const Account({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuenta'),
        backgroundColor: ColorsApp.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo-utez.png', width: 200, height: 200),
            const SizedBox(height: 20),
            const Text(
              'Sesion Iniciada :D',
            ),
          ],
        ),
      ),
    );
  }
}
