import 'package:flutter/material.dart';
import 'package:merit_calculator/pages/inputfield.dart';
import 'selector.dart';
import 'buttons.dart';
import 'package:google_fonts/google_fonts.dart';
class SimpleInput extends StatelessWidget {
  final con = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 110),
          child: Text(
            "Enter test name",
            style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 12),
          ),
        ),
        Container(
          width: 200,
          child: TextField(
            controller: con,
            onChanged: (TEST){
              TEST = con.text;
            },
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: "Test name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: BorderSide(
                    color: Colors.green
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
class TEST extends StatelessWidget {
  final s = TextEditingController();
  final s1 = TextEditingController();
  final s2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Container(
            child: Column(
              children: [
                Selector(),
                NumericInput(
                  con1: s,
                  con2: s1,
                  con3: s2,
                  label: "Entry Test",
                  hint1: "Obtained",
                  hint2: "Total",
                  hint3: "%",
                ),
                SizedBox(height: 10,),
                NumericInput(
                  con1: s,
                  con2: s1,
                  con3: s2,
                  label: "Intermediate",
                  hint1: "Obtained",
                  hint2: "Total",
                  hint3: "%",
                ),
                SizedBox(height: 10,),
                NumericInput(
                  con1: s,
                  con2: s1,
                  con3: s2,
                  label: "Matric",
                  hint1: "Obtained",
                  hint2: "Total",
                  hint3: "%",
                ),
                NextScreen()
              ],
            ),
          ),
      ),
    );
  }
}
