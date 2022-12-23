import 'package:flutter/material.dart';

// ignore: camel_case_types
class provider1 with ChangeNotifier {
  bool firstbutton = false;
  bool secondbutton = false;
  bool tiredbutton = false;
  bool fourthbutton = false;
  void button1() {
    firstbutton = true;
    secondbutton = false;
    tiredbutton = false;
    fourthbutton = false;
    notifyListeners();
  }

  void button2() {
    firstbutton = false;
    secondbutton = true;
    tiredbutton = false;
    fourthbutton = false;
    notifyListeners();
  }

  void button3() {
    firstbutton = false;
    secondbutton = false;
    tiredbutton = true;
    fourthbutton = false;
    notifyListeners();
  }

  void button4() {
    firstbutton = false;
    secondbutton = false;
    tiredbutton = false;
    fourthbutton = true;
    notifyListeners();
  }

  void buttonRe() {
    firstbutton = false;
    secondbutton = false;
    tiredbutton = false;
    fourthbutton = false;
    notifyListeners();
  }

  int selectedoptions = 14;
  void option0() {
    selectedoptions = 0;
    notifyListeners();
  }

  void option1() {
    selectedoptions = 1;
    notifyListeners();
  }

  void option2() {
    selectedoptions = 2;
    notifyListeners();
  }

  void option3() {
    selectedoptions = 3;
    notifyListeners();
  }

  void optionRe() {
    selectedoptions = 14;
  }
}
