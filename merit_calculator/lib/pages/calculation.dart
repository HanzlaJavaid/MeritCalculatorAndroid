import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Calculation extends StatefulWidget {
  @override
  _CalculationState createState() => _CalculationState();
}

class _CalculationState extends State<Calculation> {
  final number_matric = TextEditingController();
  final number_FSc = TextEditingController();
  final number_test = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightGreen,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 100, 50, 0),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: TextField(
                        controller: number_matric,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Enter Matric Marks", hintStyle: GoogleFonts.oswald()),
                      ),
                    ),
                    Container(
                      width: 100,
                      child: TextField(
                        controller: number_matric,
                        autocorrect: true,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(hintText: "Enter Matric Marks", hintStyle: GoogleFonts.oswald()),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: Container(
                  child: TextField(
                    controller: number_FSc,
                    autocorrect: true,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: "Enter FSc Marks",hintStyle: GoogleFonts.oswald() )),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: DropDown(),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: Container(
                  child: TextField(
                      controller: number_test,
                      autocorrect: true,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(hintText: "Enter FSc Marks",hintStyle: GoogleFonts.oswald() )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
                child: RaisedButton(
                  color: Colors.green,
                  child: Text("Evaluate"),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
class DropDown extends StatefulWidget {
  DropDown({Key key}) : super(key:key);
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String dropDownValue = 'NET';
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: dropDownValue,
      icon: Icon(Icons.arrow_downward),
      iconSize: 24,
      elevation: 16,
      style: GoogleFonts.oswald(color: Colors.black),
      onChanged: (String newValue) {
        setState(() {
          dropDownValue = newValue;
        });
      },
      items: <String>['MCAT','ECAT','NET'].map<DropdownMenuItem<String>>((String val) {
        return DropdownMenuItem<String>(
          value: val,
          child: Text(val),
        );
      }).toList(),
    );
  }
}
