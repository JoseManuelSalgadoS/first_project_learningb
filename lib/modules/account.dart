import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuenta'),
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
