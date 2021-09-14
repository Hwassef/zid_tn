import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tn_zid/Notifications.dart';
import 'package:tn_zid/en_cours.dart';
import 'package:tn_zid/prochaines.dart';
import 'package:tn_zid/user_profile.dart';
import 'item.dart';
import 'itemDone.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TerminesState extends StatefulWidget {
  @override
  Termines createState() => Termines();
}

class Termines extends State {
  @override
  List<ItemDone> ItemsDone = [
    ItemDone(
      Nb: 0,
      Title: "JBL FLIP 4",
      Image: 'assets/images/hq/JBL_Flip5_Product Photo_Hero_Ocean Blue@3x.png',
      Name: 'Zizou2001',
      FinalPrice: '141.60 DT',
      MagasinPrice: '549 DT',
    ),
    ItemDone(
      Nb: 1,
      Title: "HUAWEI SMART WATCH GT2",
      Image: 'assets/images/hq/watch-gt2-listimage-Matte-Black@3x.png',
      Name: 'Foulen',
      FinalPrice: '141.60 DT',
      MagasinPrice: '549 DT',
    ),
    ItemDone(
      Nb: 2,
      Title: "JBL FLIP 4",
      Image: 'assets/images/hq/JBL_Flip5_Product Photo_Hero_Ocean Blue@3x.png',
      Name: 'Zizou2001',
      FinalPrice: '141.60 DT',
      MagasinPrice: '549 DT',
    ),
    ItemDone(
      Nb: 3,
      Title: "HUAWEI SMART WATCH GT2",
      Image: 'assets/images/hq/watch-gt2-listimage-Matte-Black@3x.png',
      Name: 'Foulen',
      FinalPrice: '141.60 DT',
      MagasinPrice: '549 DT',
    ),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 3.0,
              ),
              child: Image.asset('assets/images/hq/Logo.png'),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              pushNewScreen(
                context,
                screen: Notifications(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 16.0,
                top: 15.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/hq/Ellipse 338.png',
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Image.asset(
                      'assets/images/hq/Icon feather-bell.png',
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 10.0,
                    child: Image.asset('assets/images/hq/Ellipse 339.png'),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              pushNewScreen(
                context,
                screen: user_profile_state(),
                withNavBar: false,
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
            },
            child: Container(
              margin: EdgeInsets.only(
                right: 16.0,
                top: 15.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset(
                    'assets/images/hq/Ellipse 336.png',
                  ),
                  Positioned(
                    top: 9.0,
                    left: 12.0,
                    child: Image.asset(
                      'assets/images/hq/profil.png',
                    ),
                  ),
                ],
              ),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 14.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.leftToRight,
                              child: ProchainesState()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Container(
                        child: Text(
                          "Prochianes",
                          style: GoogleFonts.roboto(),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.leftToRight,
                              child: EnCoursState()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Text(
                        "En cours",
                        style: GoogleFonts.roboto(),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => TerminesState(),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1),
                      ),
                      child: Text(
                        "Terminés",
                        style: GoogleFonts.roboto(
                          color: Color(0xFF30a6ca),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: ItemsDone.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.only(
                      left: 24.0,
                      top: ItemsDone[index].Nb == 0 ? 9.0 : 46.0,
                    ),
                    elevation: 0.0,
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Stack(
                                fit: StackFit.loose,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 151.0,
                                    width: 122.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffFFF0E5),
                                          Color(0xffdeddc2),
                                          Color(0xffa9ceb1),
                                          Color(0xff68bdb9),
                                          Color(0xff30a6ca)
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color.fromARGB(
                                              255, 234, 246, 250),
                                          spreadRadius: 8,
                                          blurRadius: 7,
                                          offset: Offset(0, 6),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: 25.0,
                                    child: Container(
                                      child: Image.asset(
                                        ItemsDone[index].Image,
                                        height: 155.0,
                                        width: 125.0,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 111 / 2,
                                    child: Container(
                                      alignment: Alignment.center,
                                      height: 40.0,
                                      width: 122.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE25033),
                                      ),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  top: 5.0,
                                                ),
                                                child: Text(
                                                  "Remorté à",
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 10.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "141.60 DT",
                                                style: GoogleFonts.roboto(
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Flexible(
                            child: Container(
                              margin: EdgeInsets.only(
                                left: 14.0,
                                right: 24.0,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                        child: ItemsDone[index].Title ==
                                                "HUAWEI SMART WATCH GT2"
                                            ? FittedBox(
                                                fit: BoxFit.cover,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                    bottom: 3.0,
                                                  ),
                                                  child: Text(
                                                    ItemsDone[index].Title,
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: Colors.black,
                                                    ),
                                                    maxLines: 1,
                                                  ),
                                                ),
                                              )
                                            : Container(
                                                margin: EdgeInsets.only(
                                                  bottom: 3.0,
                                                ),
                                                child: Text(
                                                  ItemsDone[index].Title,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 16.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                  ),
                                                  maxLines: 1,
                                                ),
                                              ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  ),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        right: 45.0,
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: "Remporté par  ",
                                              style: GoogleFonts.roboto(
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF666666),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: ItemsDone[index].Name,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Color(0xFFFE4B28),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  FittedBox(
                                    fit: BoxFit.scaleDown,
                                    child: Container(
                                      margin: EdgeInsets.only(
                                        right: 20.0,
                                        top: 4.0,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          RichText(
                                            text: TextSpan(
                                              text: "à ",
                                              style: GoogleFonts.roboto(
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0xFF666666),
                                              ),
                                              children: [
                                                TextSpan(
                                                  text: ItemsDone[index]
                                                      .FinalPrice,
                                                  style: TextStyle(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontFamily: 'Roboto',
                                                    color: Color(0xFFFE4B28),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: "au lieu de",
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 13.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Color(0xFF666666),
                                                  ),
                                                ),
                                                TextSpan(
                                                  text: " " +
                                                      ItemsDone[index]
                                                          .MagasinPrice,
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.black,
                                                    decoration: TextDecoration
                                                        .lineThrough,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 16.0,
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: 41.0,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              width: 2,
                                              color: Colors.black,
                                            ),
                                            borderRadius: BorderRadius.circular(
                                              10.0,
                                            ),
                                          ),
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  right: 7.8,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/hq/Icon ionic-ios-share-alt.png',
                                                ),
                                              ),
                                              Container(
                                                child: Text(
                                                  "Partager",
                                                  style: GoogleFonts.roboto(
                                                    color: Colors.black,
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height:
                                        ItemsDone[index].Nb == 3 ? 95.0 : null,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
