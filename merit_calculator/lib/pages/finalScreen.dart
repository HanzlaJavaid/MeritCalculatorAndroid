import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'buttons.dart';
import 'package:merit_calculator/main.dart';
import 'generalUI.dart';

class resultScreen extends StatelessWidget {
  final double aggregate;
  resultScreen({this.aggregate});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: About(),
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Your Aggregate",
                    style: GoogleFonts.roboto(color:  Color(0xff73924F),fontWeight: FontWeight.bold,fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 15,),
                  Container(
                    width: 300,
                    height: 75,
                    child: Center(
                      child: Text(
                        this.aggregate.toStringAsFixed(2),
                        style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 40),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green[500],width: 1, style: BorderStyle.solid),
                      color:  Color(0xff73924F),
                    ),
                  ),
                  SizedBox(height: 10,),
                  TESTINFO(name: testtype,),
                  SCORESHOW(HEADING: "Entry Test",obtained: TEST,total: TESTTOTAL,percentage: TESTPERCENTAGE),
                  SCORESHOW(HEADING: "Matriculation",obtained: MAT,total: MATTOTAL,percentage: MATPERCENTAGE),
                  SCORESHOW(HEADING: "Intermediate",obtained: FSC,total: FSCTOTAL,percentage: FSCPERCENTAGE),
                  SizedBox(height: 10,),
                  EditandRecalculate(),
                  SizedBox(height: 10,),
                  Recalculate(),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
}
