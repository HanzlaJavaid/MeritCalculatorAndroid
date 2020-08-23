import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'TestSelect.dart';
import 'package:merit_calculator/main.dart';
import 'package:merit_calculator/main.dart';
class Selector extends StatefulWidget {
  Function(String,String,String,bool) callback;
  Function(String)Custom;
  Selector({Key key,this.callback,this.Custom}) : super(key:key);
  @override
  _SelectorState createState() => _SelectorState();
}

class _SelectorState extends State<Selector> {
  String dropDownValue = 'NET';

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
      widget.callback(x,y,z,editable);
    });
    super.initState();
  }
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          Text(
            "Test Type",
              style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 25)
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
                icon: Icon(Icons.arrow_drop_down,size: 30,),
                iconSize: 24,
                elevation: 16,
                style: GoogleFonts.roboto(color: Colors.black),
                onChanged: (String newValue) {
                  setState(() {

                    bool editable = false;
                    String x;
                    String y;
                    String z;
                    switch (newValue){
                      case "ECAT":{
                        x = '10%';
                        y = '40%';
                        z = '60%';
                      }
                      break;
                      case "MCAT":{
                        x = '15%';
                        y = '30%';
                        z = '65%';
                      }
                      break;
                      case "NET":{
                        x = '5%';
                        y = '15%';
                        z = '80%';
                      }
                      break;
                    }
                    if (newValue == "CUSTOM"){
                        editable = true;
                    }
                    widget.callback(x,y,z,editable);
                    dropDownValue = newValue;
                    testtype = dropDownValue;
                  });
                },
                items: <String>['MCAT','ECAT','NET','CUSTOM'].map<DropdownMenuItem<String>>((String val) {
                  return DropdownMenuItem<String>(
                    value: val,
                    child: Text(val),
                  );
                }).toList(),
              ),
            ),
        ),
      ],
    );

  }
  Future _getThingsOnStartup() async {
    await Future.delayed(Duration(seconds: 1));
  }
}
