import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merit_calculator/main.dart';
class NumericInput extends StatefulWidget {
  final TextEditingController con1;
  final TextEditingController con2;
  final TextEditingController con3;
  final String label;
  final String hint1;
  final String hint2;
  final String hint3;
  final String def;
  final bool editable;
  NumericInput({this.con1,this.con2,this.con3,this.label,this.hint1,this.hint2,this.hint3,this.def,this.editable}){
    con3.text = def;
  }
  @override
  _NumericInputState createState() => _NumericInputState();
}

class _NumericInputState extends State<NumericInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
                widget.label,
                style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  child: TextField(
                    controller: widget.con1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: widget.hint1,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.green
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    controller: widget.con2,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: widget.hint2,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Colors.green
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  child: TextField(
                    enabled: widget.editable,
                    controller: widget.con3,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: widget.hint3,
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
            ),
          ],
        ),
    );
  }
}
class SimpleInput extends StatefulWidget {
  final TextEditingController con;
  SimpleInput({this.con});
  @override
  _SimpleInputState createState() => _SimpleInputState();
}

class _SimpleInputState extends State<SimpleInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text(
            "Enter test name",
           style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),
          ),
        Container(
          alignment: Alignment.topCenter,
          width: 200,
          child: TextField(
            controller: g,
            onChanged: (TEST){
              testtype = g.text;
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
