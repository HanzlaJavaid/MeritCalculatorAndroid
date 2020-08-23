import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merit_calculator/main.dart';
import 'newlayout.dart';
class Evaluate extends StatelessWidget {
  Function() eval;
  Evaluate({this.eval});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: RaisedButton(
        onPressed: (){
          eval();
        },
        color: Colors.green,
        child: Text(
          "EVALUATE",
            style: GoogleFonts.roboto(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
class NextScreen extends StatefulWidget {
  final Widget nextpage;
  NextScreen({this.nextpage});
  @override
  _NextScreenState createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  void _showDialog() {
    // flutter defined function
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Please provide us valid information"),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      child: RaisedButton(
        onPressed: () {
          name = namecon.text;
          num = contactnumber.text;
          if(name!='' && num.toString().length > 10){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => NewLayOut(),settings: RouteSettings(name: '/home')));
          }
          else
          {
              _showDialog();
          }
        },
        color: Colors.green,
        child: Text(
            "CONTINUE",
            style: GoogleFonts.roboto(color: Colors.white,fontSize: 17,fontWeight: FontWeight.bold)
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}


class BackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ClipOval(
          child: Material(
            color: Colors.green, // button color
            child: InkWell(
              splashColor: Colors.grey, // inkwell color
              child: SizedBox(width: 56, height: 56, child: Icon(Icons.arrow_back)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
    );
  }
}
class EditandRecalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 250,
      height: 50,
      child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        color: Colors.white,
        child: Text(
            "EDIT AND RECALCULATE ",
            style: GoogleFonts.roboto(color: Colors.green,fontSize: 15,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: Colors.green)
        ),
      ),
    );
  }
}
class Recalculate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 250,
      height: 50,
      child: RaisedButton(
        onPressed: (){
          e.text = '';
          e1.text = '';
          m.text = '';
          m1.text = '';
          f.text = '';
          f1.text = '';
          g.text = '';
          Navigator.popUntil(context, ModalRoute.withName('/home'));
        },
        color: Colors.green,
        child: Text(
          "CALCULATE WITH NEW DATA ",
          style: GoogleFonts.roboto(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(color: Colors.green[500])
        ),
      ),
    );
  }
}

