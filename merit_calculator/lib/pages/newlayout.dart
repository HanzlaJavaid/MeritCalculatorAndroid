import 'package:flutter/material.dart';
import 'inputfield.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merit_calculator/main.dart';
import 'buttons.dart';
import 'selector.dart';
import 'finalScreen.dart';
class NewLayOut extends StatefulWidget {
  @override
  _NewLayOutState createState() => _NewLayOutState();
}

class _NewLayOutState extends State<NewLayOut> {
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Please check your data"),
          content: new Text("The entered information appears to be invalid. Input valid data and try again"),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("Ok"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
  String dropDownValue = 'NET';
  Calculate(){
    String temp1 = f2.text + "%";
    String temp2 = m2.text + "%";
    String temp3 = e2.text + "%";
    if(double.parse(f.text) > double.parse(f1.text) || double.parse(m.text) > double.parse(m1.text) || double.parse(e.text) > double.parse(e1.text) || double.parse(temp1.substring(0,temp1.indexOf("%")))+double.parse(temp2.substring(0,temp2.indexOf("%")))+double.parse(temp3.substring(0,temp3.indexOf("%"))) != 100){
       {
        return _showDialog();
      }
    }
    if((f.text) == '' || (f1.text) == '' || (m.text) == '' || (m1.text) == '' || (e.text) == 0 || (e1.text) == '' || (temp1.substring(0,temp1.indexOf("%"))) == '' || (temp2.substring(0,temp2.indexOf("%"))) == ''|| (temp3.substring(0,temp3.indexOf("%"))) == ''){
      {
        return _showDialog();
      }
    }
    double intershare = (double.parse(f.text)/double.parse(f1.text))*(double.parse(temp1.substring(0,temp1.indexOf("%")))/100);
    double matricshare = (double.parse(m.text)/double.parse(m1.text))*(double.parse(temp2.substring(0,temp2.indexOf("%")))/100);
    double testshare = (double.parse(e.text)/double.parse(e1.text))*(double.parse(temp3.substring(0,temp3.indexOf("%")))/100);
    double aggregate = (intershare + matricshare + testshare)*100;
    FSCPERCENTAGE = temp1.substring(0,temp1.indexOf('%'));
    MATPERCENTAGE = temp2.substring(0,temp2.indexOf("%"));
    TESTPERCENTAGE = temp3.substring(0,temp3.indexOf("%"));
    FSC = (f.text);
    MAT = (m.text);
    TEST = e.text;
    FSCTOTAL = (f1.text);
    TESTTOTAL = e1.text;
    MATTOTAL = (m1.text);
    Navigator.push(context, MaterialPageRoute(builder: (context)=>resultScreen(aggregate: aggregate,)));
  }
  callback(a,b,d,c) {
    editable1 = c;
    setState(() {
      e2.text = a;
      m2.text = b;
      f2.text = d;
    });
    if(editable1 == false){
        layoutlist.removeRange(0, layoutlist.length);
        layoutlist.addAll(<Widget>[
            NumericInput(
              con1: e,
              con2: e1,
              con3: e2,
              label: "Entry Test",
              hint1: "Obtained",
              hint2: "Total",
              hint3: "%",
              def: '',
              editable: editable1,
            ),
          SizedBox(height: 5,),
            NumericInput(
                con1: f,
                con2: f1,
                con3: f2,
                label: "Intermediate",
                hint1: "Obtained",
                hint2: "Total",
                hint3: "%",
                def: '',
                editable: editable1
            ),
          SizedBox(height: 5,),
            NumericInput(
              con1: m,
              con2: m1,
              con3: m2,
              label: "Matric",
              hint1: "Obtained",
              hint2: "Total",
              hint3: "%",
              def: '',
              editable: editable1,
            ),
         SizedBox(height: 25,),
        ]);
        setState(() {
          e2.text = a;
          m2.text = b;
          f2.text = d;
        });
    }else{
      Custom("name");
    }
    print(editable1);
  }
  Custom(name){
    if(layoutlist.length<8){
      layoutlist.removeRange(0, layoutlist.length);
      layoutlist.addAll(<Widget>[
      SimpleInput(),
        NumericInput(
          con1: e,
          con2: e1,
          con3: e2,
          label: "Entry Test",
          hint1: "Obtained",
          hint2: "Total",
          hint3: "%",
          def: '',
          editable: editable1,
        ),
        SizedBox(height: 5,),
        NumericInput(
            con1: f,
            con2: f1,
            con3: f2,
            label: "Intermediate",
            hint1: "Obtained",
            hint2: "Total",
            hint3: "%",
            def: '',
            editable: editable1
        ),
        SizedBox(height: 5,),
        NumericInput(
          con1: m,
          con2: m1,
          con3: m2,
          label: "Matric",
          hint1: "Obtained",
          hint2: "Total",
          hint3: "%",
          def: '',
          editable: editable1,
        ),
        SizedBox(height: 25,),
      ]);
      setState(() {
      });
    }
  }
  List<Widget> layoutlist = [
    NumericInput(
      con1: e,
      con2: e1,
      con3: e2,
      label: "Entry Test",
      hint1: "Obtained",
      hint2: "Total",
      hint3: "%",
      def: '',
      editable: editable1,
    ),
    SizedBox(height: 5,),
    NumericInput(
        con1: f,
        con2: f1,
        con3: f2,
        label: "Intermediate",
        hint1: "Obtained",
        hint2: "Total",
        hint3: "%",
        def: '',
        editable: editable1
    ),
    SizedBox(height: 5,),
    NumericInput(
      con1: m,
      con2: m1,
      con3: m2,
      label: "Matric",
      hint1: "Obtained",
      hint2: "Total",
      hint3: "%",
      def: '',
      editable: editable1,
    ),
    SizedBox(height: 25,),
    ];
  @override
  void initState() {
    _getThingsOnStartup().then((value){
      bool editable = false;
      String x;
      String y;
      String z;
      x = '5%';
      y = '15%';
      z = '80%';
      testtype = 'NET';
      MATPERCENTAGE = x;
      FSCPERCENTAGE = y;
      TESTPERCENTAGE = z;
      callback(x,y,z,editable);
    });
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: About(),
      backgroundColor: Colors.white,
        body: Container(
          alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top:0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 50,),
                  Expanded(
                    flex: 1,
                    child: Text(
                      "Provide The Following Details",
                      style: GoogleFonts.roboto(color:  Color(0xff73924F),fontWeight: FontWeight.bold,fontSize: 25) ,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Expanded(
                    flex:  2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Test Type",
                            style: GoogleFonts.roboto(color: Color(0xFF6A6A6A),fontWeight: FontWeight.bold,fontSize: 15),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: 300,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(width: 1.0, style: BorderStyle.solid),
                                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                              ),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton(
                                value: dropDownValue,
                                icon: Container(child: Icon(Icons.arrow_drop_down,size: 30,),padding: EdgeInsets.only(left: 150),),
                                iconSize: 24,
                                elevation: 16,
                                style: GoogleFonts.roboto(color: Colors.black,),
                                onChanged: (String newValue) {
                                  setState(() {
                                    bool editable = false;
                                    String x;
                                    String y;
                                    String z;
                                    switch (newValue){
                                      case "ECAT":{
                                        x = '25%';
                                        y = '45%';
                                        z = '30%';
                                      }
                                      break;
                                      case "MCAT":{
                                        x = '10%';
                                        y = '40%';
                                        z = '50%';
                                      }
                                      break;
                                      case "NET":{
                                        x = '10%';
                                        y = '15%';
                                        z = '75%';
                                      }
                                      break;
                                    }
                                    MATPERCENTAGE = x;
                                    FSCPERCENTAGE = y;
                                    TESTPERCENTAGE = z;
                                    if (newValue == "CUSTOM"){
                                      editable = true;
                                    }
                                    callback(x,y,z,editable);
                                    dropDownValue = newValue;
                                    testtype = dropDownValue;
                                  });
                                },
                                items: <String>['MCAT','ECAT','NET','CUSTOM'].map<DropdownMenuItem<String>>((String val) {
                                  return DropdownMenuItem<String>(
                                    value: val,
                                    child: Text(val,style: GoogleFonts.roboto(color: Colors.black),),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ],
                      ),

                  ),
                  Flexible(child: ListView.builder(itemBuilder: (_,index) => layoutlist[index],itemCount: layoutlist.length,shrinkWrap: true,padding: EdgeInsets.zero,),flex: 9,),
                  Evaluate(eval: Calculate,),
                ],
              ),
            ),
        ),
      );
  }
  Future _getThingsOnStartup() async {

    await Future.delayed(Duration(seconds: 1));
  }
}

