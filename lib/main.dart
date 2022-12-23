import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/loginScreen.dart';
import 'Providers/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => provider1(),
      child: const MaterialApp(
        home: LoginScreeen(),
        debugShowCheckedModeBanner: false,
      )));
}
