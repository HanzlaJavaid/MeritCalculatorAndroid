import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class SCORESHOW extends StatelessWidget {
  String HEADING;
  String obtained;
  String total;
  String percentage;
  SCORESHOW({this.HEADING,this.obtained,this.total,this.percentage});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 200,
                child: Divider(
                  color:  Color(0xff73924F),
                  height: 5,
                  thickness: 1.5,
                ),
              ),
              Text(
                HEADING,
                style: GoogleFonts.roboto(color:  Color(0xff73924F),fontWeight: FontWeight.bold,fontSize: 12),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40,0,40,0),
                child: Flex(
                  direction: Axis.vertical,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                       Text(
                            'Obtained Marks',
                            style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 16),
                            textAlign: TextAlign.start,
                          ),
                       Text(
                            obtained,
                            style: GoogleFonts.roboto(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16),
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Total Marks',
                          style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          total,
                          style: GoogleFonts.roboto(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Percentage In Merit',
                          style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 16),
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          percentage + "%",
                          style: GoogleFonts.roboto(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}
class TESTINFO extends StatelessWidget {
  String name;
  TESTINFO({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40,0,40,0),
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Test Type',
              style: GoogleFonts.roboto(color: Colors.grey,fontWeight: FontWeight.normal,fontSize: 16),
              textAlign: TextAlign.start,
            ),
            Text(
              name,
              style: GoogleFonts.roboto(color: Colors.grey[500],fontWeight: FontWeight.bold,fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
