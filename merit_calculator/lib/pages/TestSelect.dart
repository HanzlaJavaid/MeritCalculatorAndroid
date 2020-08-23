import 'package:flutter/material.dart';
import 'buttons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'selector.dart';
import 'MarksDetails.dart';
import 'EntryMarks.dart';
import 'package:merit_calculator/main.dart';
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
class TestSelect extends StatefulWidget {
  @override
  _TestSelectState createState() => _TestSelectState();
}

class _TestSelectState extends State<TestSelect> {
  List<SimpleInput> listdynamic = [];
  bool editable;
  String x;
  String y;
  String z;
  callback(a,b,d,c) {
    setState(() {
      x = a;
      y = b;
      z = d;
      editable = c;
    });
    if(this.editable == false){
      if(listdynamic.length > 0){
      listdynamic.removeLast();}
    }else{
      Custom("name");
    }
  }
  Custom(name){
    if(listdynamic.length<1){
      listdynamic.add(new SimpleInput());
      setState(() {
      });
    }
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
                children: [
                  Flexible(
                    flex: 1,
                    child: Text(
                      "Pick a test type",
                      style: GoogleFonts.roboto(color: Colors.green,fontWeight: FontWeight.bold,fontSize: 25),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Flexible(flex:2,child: Selector(callback: callback,Custom: Custom,)),
                  Flexible(flex:2 , child: ListView.builder(itemBuilder: (_,index) => listdynamic[index],itemCount: listdynamic.length,)),
                  Flexible(flex: 2,child: NextScreen(nextpage:EntryMarks(x: this.z,y: this.x,z: this.y,editable: this.editable,),)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
