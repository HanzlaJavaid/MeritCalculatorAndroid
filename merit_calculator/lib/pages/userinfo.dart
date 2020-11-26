import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:merit_calculator/main.dart';
import 'buttons.dart';
import 'newlayout.dart';
class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Flexible(
          flex: 1,
          child: Text(
            "Please enter the following",
            style: GoogleFonts.roboto(color: Color(0xff73924F),fontWeight: FontWeight.bold,fontSize: 25) ,
            textAlign: TextAlign.center,
          ),
          ),
            Column(
              children: [
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.topCenter,
                  width: 300,
                  child: TextField(
                    controller: namecon,
                    onChanged: (name){
                      name = namecon.text;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Colors.green
                        ),),
                      hintText: "Your name here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Colors.green
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.topCenter,
                  width: 300,
                  child: TextField(

                    controller: contactnumber,
                    onChanged: (num){
                      num = contactnumber.text;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Colors.green
                        ),),
                      hintText: "Your mobile number here",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3),
                        borderSide: BorderSide(
                            color: Colors.black
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                NextScreen(nextpage: NewLayOut(),)
              ],
            )
          ]
        ),
      ),
    );
  }
}
