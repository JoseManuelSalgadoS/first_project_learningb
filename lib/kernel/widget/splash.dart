import 'package:first_project_learningb/kernel/colors/colors_app.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
    //initState: Se ejecuta después de construirse el build
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),
    () => Navigator.pushReplacementNamed(context, '/menu'));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.whiteColor,
      body: Center(
        child: //Image.asset('assets/images/logo-utez.png', width: 200, height: 150,),
        Text('hola'),
        ),
    );
  }
}