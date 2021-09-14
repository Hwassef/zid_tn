import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Container(
          child: Image.asset('assets/images/Logo.png'),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black,
        ),
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowGlow();
          return true;
        },
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 21.0,
                left: 24.0,
                right: 30.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: GoogleFonts.roboto(
                      height: 0.8,
                      fontSize: 20.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return new Container(
                              height: 189.0,
                              color: Colors.transparent,
                              child: new Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                  right: 24.0,
                                  bottom: 24.0,
                                ),
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 24.0,
                                            top: 25.0,
                                          ),
                                          child: Text(
                                            "Message d'alerte",
                                            style: GoogleFonts.roboto(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            margin: EdgeInsets.only(
                                              left: 24.0,
                                              right: 24.0,
                                            ),
                                            child: Text(
                                              "Fugiat ea amet tempor aliqua ea elit irure. In elit incididunt officia proident.",
                                              style: GoogleFonts.roboto(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                                color: Color(0xFF666666),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Expanded(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                          left: 24.0,
                                          right: 24.0,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: 120.0,
                                              height: 41.0,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                border: Border.all(
                                                  width: 1,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Non",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 120.0,
                                              height: 41.0,
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight,
                                                  colors: [
                                                    Color(0xffe25033),
                                                    Color(0xffeb6348),
                                                    Color(0xfff2755c),
                                                    Color(0xfff98770),
                                                    Color(0xffff9985),
                                                  ],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              alignment: Alignment.center,
                                              child: Text(
                                                "Oui",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    child: Container(
                      child: Text(
                        "Effacer les notifications",
                        style: GoogleFonts.roboto(
                          height: 0.8,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE25033),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      top: 23.0,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Jeudi 21 Janvier . 8:20",
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    // height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFCCCCCC).withOpacity(0.2),
                    ),
                    margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 9.0),
                          child: Row(
                            children: [
                              Text(
                                "In deserunt occaecat tempor l",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Text(
                                  "Culpa deserunt consequat proident reprehen duis in deserunt amet.",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // margin: EdgeInsets.only(
                    //   top: 23.0,
                    // ),
                    alignment: Alignment.center,
                    child: Text(
                      "Jeudi 21 Janvier . 8:20",
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    // height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFCCCCCC).withOpacity(0.2),
                    ),
                    margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 9.0),
                          child: Row(
                            children: [
                              Text(
                                "Ipsum tempor adipisicing sit nostrud",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Text(
                                  "Magna deserunt est laborum eiusmod officia nisi consequat amet elit ad. Dolore elit proident nostrud eiusmod.",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Jeudi 21 Janvier . 8:20",
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    // height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFCCCCCC).withOpacity(0.2),
                    ),
                    margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 9.0),
                          child: Row(
                            children: [
                              Text(
                                "Non aliquip elit aute do aliqua ipsum",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Text(
                                  "Aute nulla dolore cupidatat occaecat adipisicing. Eu ad ullamco nisi veniam amet excepteur magna fugiat.",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Jeudi 21 Janvier . 8:20",
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFCCCCCC).withOpacity(0.2),
                    ),
                    margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 9.0),
                          child: Row(
                            children: [
                              Text(
                                "Consequat ex cupidatat aute in ad sit aliquip",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Text(
                                  "Dolore pariatur adipisicing qui voluptate nulla anim incididunt eu. Ex excepteur Lorem dolore duis dolore dolor.",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Jeudi 21 Janvier . 8:20",
                      style: GoogleFonts.roboto(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    // height: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Color(0xFFCCCCCC).withOpacity(0.2),
                    ),
                    margin: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 9.0),
                          child: Row(
                            children: [
                              Text(
                                "Sit velit excepteur duis in ut proident.",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                  bottom: 16.0,
                                ),
                                child: Text(
                                  "Consequat non sint fugiat laboris consequat. Non est veniam consequat aute laboris nisi minim Lorem laboris.",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    color: Color(0xFF666666),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
