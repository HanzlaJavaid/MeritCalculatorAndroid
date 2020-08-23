import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'inputfield.dart';
import 'buttons.dart';
import 'finalScreen.dart';
import 'package:merit_calculator/main.dart';
class MarksDetails extends StatefulWidget {
  String x;
  String y;
  String entryMarks;
  String entryMarksTotal;
  String percent;
  bool editable;
  MarksDetails({this.x,this.y,this.editable,this.entryMarks,this.entryMarksTotal,this.percent});
  @override
  _MarksDetailsState createState() => _MarksDetailsState();
}

class _MarksDetailsState extends State<MarksDetails> {
  final m = TextEditingController();
  final m1 = TextEditingController();
  final m2 = TextEditingController();
  final f = TextEditingController();
  final f1 = TextEditingController();
  final f2 = TextEditingController();
  Calculate(){
    String temp1 = f2.text + "%";
    String temp2 = m2.text + "%";
    String temp3 = widget.percent + "%";
    print(temp3);
    print(widget.entryMarks);
    print(widget.entryMarksTotal);
    double intershare = (double.parse(f.text)/double.parse(f1.text))*(double.parse(temp1.substring(0,temp1.indexOf("%")))/100);
    double matricshare = (double.parse(m.text)/double.parse(m1.text))*(double.parse(temp2.substring(0,temp2.indexOf("%")))/100);
    double testshare = (double.parse(widget.entryMarks)/double.parse(widget.entryMarksTotal))*(double.parse(temp3.substring(0,temp3.indexOf("%")))/100);
    double aggregate = (intershare + matricshare + testshare)*100;
    FSCPERCENTAGE = temp1.substring(0,temp1.indexOf('%'));
    MATPERCENTAGE = temp2.substring(0,temp2.indexOf("%"));
    FSC = (f.text);
    MAT = (m.text);
    FSCTOTAL = (f1.text);
    MATTOTAL = (m1.text);
    TESTTOTAL = e1.text;
    TEST = e.text;
    Navigator.push(context, MaterialPageRoute(builder: (context)=>resultScreen(aggregate: aggregate,)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Just one more step",
                    style: GoogleFonts.roboto(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                  ),
                  SizedBox(height: 25,),
                  NumericInput(
                    con1: f,
                    con2: f1,
                    con3: f2,
                    label: "Intermediate",
                    hint1: "Obtained",
                    hint2: "Total",
                    hint3: "%",
                    def: widget.x,
                    editable: widget.editable,
                  ),
                  SizedBox(height: 15,),
                  NumericInput(
                    con1: m,
                    con2: m1,
                    con3: m2,
                    label: "Matric",
                    hint1: "Obtained",
                    hint2: "Total",
                    hint3: "%",
                    def: widget.y,
                    editable: widget.editable,
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BackScreen(),
                      SizedBox(width: 40,),
                      Evaluate(eval: Calculate,),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
