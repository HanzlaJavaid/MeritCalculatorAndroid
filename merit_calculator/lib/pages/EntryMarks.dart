import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inputfield.dart';
import 'buttons.dart';
import 'MarksDetails.dart';
import 'package:merit_calculator/main.dart';
class EntryMarks extends StatefulWidget {
  String x;
  String y;
  String z;
  bool editable;
  EntryMarks({Key key, this.x,this.y,this.z,this.editable}) : super();
  @override
  _EntryMarksState createState() => _EntryMarksState();
}

class _EntryMarksState extends State<EntryMarks> {
  final e = TextEditingController();
  final e1 = TextEditingController();
  final e2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Provide the following details",
                  style: GoogleFonts.roboto(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                ),
                SizedBox(height: 25,),
                NumericInput(
                  con1: e,
                  con2: e1,
                  con3: e2,
                  label: "Entry Test",
                  hint1: "Obtained",
                  hint2: "Total",
                  hint3: "%",
                  def: widget.x,
                  editable: widget.editable,
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    BackScreen(),
                    SizedBox(width: 40,),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: ClipOval(
                          child: Material(
                            color: Colors.green, // button color
                            child: InkWell(
                              splashColor: Colors.grey, // inkwell color
                              child: SizedBox(width: 56, height: 56, child: Icon(Icons.arrow_forward)),
                              onTap: () {
                                String temp1 = e.text;
                                String temp2 = e1.text;
                                String temp3 = e2.text + '%';
                                TEST = temp1;
                                TESTTOTAL = temp2;
                                TESTPERCENTAGE = temp3.substring(0,temp3.indexOf("%"));
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>MarksDetails(x: widget.y,y: widget.z,editable: widget.editable,entryMarks: this.e.text.toString(),entryMarksTotal: this.e1.text.toString(),percent: temp3,)));
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ) ,
        ),
      ),
    );
  }
}
