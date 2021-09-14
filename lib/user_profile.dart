import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tn_zid/acheter_jetons.dart';
import 'package:tn_zid/changer_mot_de_passe.dart';
import 'package:tn_zid/modifier_informations.dart';

class user_profile_state extends StatefulWidget {
  @override
  UserProfile createState() => UserProfile();
}

class UserProfile extends State {
  bool isSwitched = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Rectangle 333.png'),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 16.0,
                top: 16.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/Ellipse 368.png',
                  ),
                  Positioned(
                    top: 10.0,
                    left: 12.0,
                    child: Image.asset(
                      'assets/images/Icon material-keyboard-arrow-left.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(
                right: 16.0,
                top: 16.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/Ellipse 368.png',
                  ),
                  Positioned(
                    top: 10.0,
                    left: 12.0,
                    child: Image.asset(
                      'assets/images/Icon feather-log-out.png',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        body: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowGlow();
            return true;
          },
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          top: 22.0,
                        ),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/Ellipse 365.png'),
                            Positioned(
                              top: 42.0,
                              left: 30.0,
                              child: Text(
                                "FBF",
                                style: GoogleFonts.roboto(
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF30A6CA),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 77.0,
                              left: 83.0,
                              child:
                                  Image.asset('assets/images/Ellipse 366.png'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                          top: 9.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Foulen Ben Foulen",
                                  style: GoogleFonts.roboto(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 2.0,
                                  ),
                                  child: Text(
                                    "FBFoulen@gmail.com",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                    top: 2.0,
                                  ),
                                  child: Text(
                                    "+216 XX XXX XXX",
                                    style: GoogleFonts.roboto(
                                      color: Colors.white.withOpacity(0.7),
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 29.0,
                      ),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.only(
                          left: 24.0,
                          right: 24.0,
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                            left: 16.0,
                            right: 16.0,
                            top: 10.0,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Nombre des jetons\ndisponible",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      bottom: 9.0,
                                    ),
                                    child: Text(
                                      "30",
                                      style: GoogleFonts.roboto(
                                        color: Color(0xFf30A6CA),
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      pushNewScreen(
                                        context,
                                        screen: AcheterJetons(),
                                        withNavBar: false,
                                        pageTransitionAnimation:
                                            PageTransitionAnimation.cupertino,
                                      );
                                    },
                                    child: Container(
                                      width: 101.0,
                                      height: 41.0,
                                      // margin: EdgeInsets.only(
                                      //   right: 16.0,
                                      // ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE25033),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      transform: Matrix4.translationValues(
                                          0.0, -20.0, 0.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              left: 15.6,
                                              right: 6.4,
                                            ),
                                            child: Image.asset(
                                              'assets/images/Icon feather-shopping-cart.png',
                                              width: 16.0,
                                              height: 16,
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              right: 14.0,
                                            ),
                                            child: Text(
                                              "Acheter",
                                              style: GoogleFonts.roboto(
                                                color: Colors.white,
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          right: 24.0,
                          top: 16.0,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                left: 24.0,
                                top: 24.0,
                                bottom: 8.0,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "MON COMPTE",
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: ModifierInformationState(),
                                  withNavBar: false,
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                  right: 24.0,
                                  bottom: 25.0,
                                  top: 14.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Modifier mes inforamtions",
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.chevronRight,
                                      color: Colors.black,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                pushNewScreen(
                                  context,
                                  screen: ChangerpasseState(),
                                  withNavBar: false,
                                  pageTransitionAnimation:
                                      PageTransitionAnimation.cupertino,
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                  right: 24.0,
                                  bottom: 15.0,
                                ),
                                transform:
                                    Matrix4.translationValues(0.0, -4.0, 0.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Changer mot de passe",
                                      style: GoogleFonts.roboto(
                                        color: Colors.black,
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.chevronRight,
                                      color: Colors.black,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 16.0,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 24.0,
                              right: 24.0,
                            ),
                            decoration: BoxDecoration(
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
                                        top: 24.0,
                                      ),
                                      child: Text(
                                        "PARAMÊTRES",
                                        style: GoogleFonts.roboto(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                    bottom: 34.0,
                                    left: 24.0,
                                    right: 24.0,
                                    top: 16.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Recevoir Push Notifications",
                                        style: GoogleFonts.roboto(
                                          color: Color(0xFF333333),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Container(
                                        width: 50.0,
                                        height: 28.0,
                                        child: Switch(
                                          value: isSwitched,
                                          onChanged: (value) {
                                            setState(() {
                                              isSwitched = value;
                                            });
                                          },
                                          activeTrackColor: Color(0xFF0CB868)
                                              .withOpacity(0.3),
                                          activeColor: Color(0xFF0CB868),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 24.0,
                    right: 24.0,
                    top: 25.0,
                    bottom: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Powered by WI-MOBI.com",
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "ZID © 2021 All Rights Reserved",
                        style: GoogleFonts.roboto(
                          fontSize: 12.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
