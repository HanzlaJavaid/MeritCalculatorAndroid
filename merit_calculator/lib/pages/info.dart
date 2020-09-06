import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
class infoShow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: new AppBar(title: new Text("About"), backgroundColor: Color(0xff73924F),centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Who We Are?",style:GoogleFonts.roboto(color: Color(0xff73924F),fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16,right: 16),
                child: Text("PrepareHOW came about from a simple ambition of making educational opportunities accessible for all. The founder of this startup, Khurshid Amin, created a purpose out of his own educational struggles by setting an aim of helping the students get equal opportunity to prepare for entrance exams and have a chance to compete in the world.",style: GoogleFonts.roboto(color: Color(0xFF6A6A6A),fontSize: 16),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Find Us Here",style:GoogleFonts.roboto(color: Color(0xff73924F),fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50,10,50,0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap:(){
                          _launchURL('https://www.preparehow.com/');
                        },
                        child:Image.asset('assets/images/globe.png') ,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap:(){
                          _launchURL('https://www.instagram.com/prepare.how');
                        },
                        child:Image.asset('assets/images/ins.png'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16),
                      child: GestureDetector(
                        onTap:(){
                          _launchURL('https://www.facebook.com/PrepareHOW/');
                        },
                        child:Image.asset('assets/images/fb.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16,left: 16,right: 16),
                child: Text("For more information, please visit www.preparehow.com",style: GoogleFonts.roboto(color: Color(0xFF6A6A6A),fontSize: 16),textAlign: TextAlign.center,),
              ),
            ],
          ),
        ),
      )
    );
  }
}
_launchURL(u) async {
  const url = 'https://flutter.io';
  await launch(u);
}