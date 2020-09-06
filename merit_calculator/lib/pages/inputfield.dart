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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 4,top: 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  widget.label,
                  style: GoogleFonts.roboto(color: Color(0xFF6A6A6A),fontWeight: FontWeight.bold,fontSize: 15),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Container(
                      width: 100,
                      child: TextField(
                        controller: widget.con1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: widget.hint1,
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                              color: Colors.black
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 2),
                    child: Container(
                      width: 100,
                      child: TextField(
                        controller: widget.con2,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color: Colors.green
                            ),
                          ),
                          hintText: widget.hint2,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(3),
                            borderSide: BorderSide(
                                color: Colors.black
                            ),
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
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide(
                              color: Colors.green
                          ),
                        ),
                        hintText: widget.hint3,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3),
                          borderSide: BorderSide(
                              color: Colors.black
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
            "Enter Test Name",
           style: GoogleFonts.roboto(color: Color(0xFF6A6A6A),fontWeight: FontWeight.bold,fontSize: 15),

          ),
        Container(
          alignment: Alignment.topCenter,
          width: 300,
          child: TextField(
            controller: g,
            onChanged: (TEST){
              testtype = g.text;
            },
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                    color: Colors.green
                ),
              ),
              hintText: "Test name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
                borderSide: BorderSide(
                    color: Colors.black
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
