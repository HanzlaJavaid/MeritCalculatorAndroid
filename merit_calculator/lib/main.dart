import 'package:flutter/material.dart';
import 'package:merit_calculator/pages/calculation.dart';
import 'package:merit_calculator/pages/sandbox.dart';
import 'pages/MarksDetails.dart';
import 'pages/TestSelect.dart';
import 'pages/loading.dart';
import 'pages/finalScreen.dart';
var testtype;
var MAT;
var FSC;
var MATTOTAL;
var FSCTOTAL;
var MATPERCENTAGE;
var FSCPERCENTAGE;
var TEST;
var TESTTOTAL;
var TESTPERCENTAGE;
var name;
var num;
final e = TextEditingController();
final e1 = TextEditingController();
final e2 = TextEditingController();
final m = TextEditingController();
final m1 = TextEditingController();
final m2 = TextEditingController();
final f = TextEditingController();
final f1 = TextEditingController();
final f2 = TextEditingController();
final g = TextEditingController();
final namecon = TextEditingController();
final contactnumber = TextEditingController();
bool editable1 =false;
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => loadingscreen(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/second': (context) => TEST(),
    },
  ));
}

