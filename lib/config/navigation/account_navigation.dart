import 'package:first_project_learningb/modules/account.dart';
import 'package:flutter/material.dart';

class AccountNavigation extends StatelessWidget{
  const AccountNavigation({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/account',
      routes: {
        '/account':(context) => const Account()
      },
    );
  }
}