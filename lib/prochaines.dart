import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tn_zid/Notifications.dart';
import 'package:tn_zid/details_produit.dart';
import 'package:tn_zid/en_cours.dart';
import 'package:tn_zid/enchere_en_cours.dart';
import 'package:tn_zid/termines.dart';
import 'package:tn_zid/user_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:url_launcher/url_launcher.dart';

import 'item.dart';
import 'package:google_fonts/google_fonts.dart';

class ProchainesState extends StatefulWidget {
  @override
  Prochaines createState() => Prochaines();
}

class Prochaines extends State {
  bool isPressed = false;
  bool isP = false;
  bool selected = false;

  final db = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    const String url = "https://www.cyberio.tn";
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
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 14.0,
                // left: 80.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => build(context),
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFe0f2f1),
                      ),
                      child: Container(
                        child: Text(
                          "Prochianes",
                          style: GoogleFonts.roboto(
                            height: 0.8,
                            color: Color(0xFF30a6ca),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
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
                        style: GoogleFonts.roboto(
                          height: 0.8,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              child: TerminesState()));
                    },
                    child: Container(
                      padding: EdgeInsets.all(17.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Text(
                        "Terminés",
                        style: GoogleFonts.roboto(
                          height: 0.8,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            StreamBuilder<QuerySnapshot>(
              stream: db.collection('encheres').orderBy('title').snapshots(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) {
                  return Container(
                    margin: EdgeInsets.only(top: ((ScreenHeight) / 2) - 180),
                    child: CircularProgressIndicator(),
                  );
                } else
                  return Expanded(
                    child: ListView(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: snapshot.data!.docs.map<Widget>(
                        (doc) {
                          return Card(
                            margin: EdgeInsets.only(
                              left: 24.0,
                              top: 9.0,
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
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
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
                                              border: doc.data()['vip'] == true
                                                  ? Border.all(
                                                      width: 4,
                                                      color: Colors.yellow,
                                                    )
                                                  : null,
                                            ),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  child: Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Container(
                                                        margin: EdgeInsets.only(
                                                          left: 4.0,
                                                          top: 9.0,
                                                        ),
                                                        child: doc.data()[
                                                                    'vip'] ==
                                                                true
                                                            ? Image.asset(
                                                                'assets/images/hq/Group 484@3x.png',
                                                                width: 39.52,
                                                                height: 39.51,
                                                              )
                                                            : null,
                                                      ),
                                                      Container(
                                                        transform: Matrix4
                                                            .translationValues(
                                                                5.0, 0.0, 0.0),
                                                        child: IconButton(
                                                          onPressed: () {
                                                            doc.reference
                                                                .update({
                                                              'is_favorite':
                                                                  true
                                                            });
                                                            if (doc.data()[
                                                                    'is_favorite'] ==
                                                                false) {
                                                              final snackBar =
                                                                  SnackBar(
                                                                content: Text(
                                                                  'Produit ajouté avec succès à vos favoris',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                ),
                                                                behavior:
                                                                    SnackBarBehavior
                                                                        .floating,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .all(
                                                                    Radius
                                                                        .circular(
                                                                            20),
                                                                  ),
                                                                ),
                                                                duration:
                                                                    Duration(
                                                                  seconds: 3,
                                                                ),
                                                              );
                                                              ScaffoldMessenger
                                                                      .of(
                                                                          context)
                                                                  .showSnackBar(
                                                                      snackBar);
                                                            } else {
                                                              null;
                                                            }
                                                            if (doc.data()[
                                                                    'is_favorite'] ==
                                                                false) {
                                                              CollectionReference
                                                                  FavoriteEncheres =
                                                                  FirebaseFirestore
                                                                      .instance
                                                                      .collection(
                                                                          'favorite_encheres');
                                                              FavoriteEncheres
                                                                  .add({
                                                                'title': doc
                                                                        .data()[
                                                                    'title'],
                                                                'button_text': doc
                                                                        .data()[
                                                                    'button_text'],
                                                                'image': doc
                                                                        .data()[
                                                                    'image'],
                                                                'is_favorite': doc
                                                                        .data()[
                                                                    'is_favorite'],
                                                                'magasin_price':
                                                                    doc.data()[
                                                                        'magasin_price'],
                                                                'particpants_percent':
                                                                    doc.data()[
                                                                        'particpants_percent'],
                                                                'remise': doc
                                                                        .data()[
                                                                    'remise'],
                                                                'time_left': doc
                                                                        .data()[
                                                                    'time_left'],
                                                                'vip':
                                                                    doc.data()[
                                                                        'vip'],
                                                                'depart_price': doc
                                                                        .data()[
                                                                    'depart_price'],
                                                              });
                                                            } else {
                                                              return null;
                                                            }
                                                          },
                                                          icon: Stack(
                                                            children: [
                                                              Image.asset(
                                                                  'assets/images/hq/Ellipse 332.png'),
                                                              doc.data()['is_favorite'] ==
                                                                      false
                                                                  ? Positioned(
                                                                      left: 4.7,
                                                                      top: 5.15,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/hq/Icon ionic-ios-heart-empty.png'),
                                                                    )
                                                                  : Positioned(
                                                                      left: 4.7,
                                                                      top: 5.15,
                                                                      child: Image
                                                                          .asset(
                                                                              'assets/images/hq/Icon ionic-ios-heart.png'),
                                                                    ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Positioned(
                                            top: doc.data()['title'] ==
                                                    "HUAWEI SMART WATCH GT2"
                                                ? 25.0
                                                : 30.0,
                                            child: Container(
                                              transform: doc.data()['title'] ==
                                                      "HUAWEI SMART WATCH GT2"
                                                  ? Matrix4.translationValues(
                                                      2.0, 0.0, 0.0)
                                                  : Matrix4.translationValues(
                                                      -35.0, 0.0, 0.0),
                                              child: Image.asset(
                                                doc.data()['image'],
                                                height: doc.data()['title'] ==
                                                        "HUAWEI SMART WATCH GT2"
                                                    ? 155.0
                                                    : 163.0,
                                                width: doc.data()['title'] ==
                                                        "HUAWEI SMART WATCH GT2"
                                                    ? 123.0
                                                    : 193.0,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              pushNewScreen(
                                                context,
                                                screen: DetailsProduit(),
                                                withNavBar: false,
                                                pageTransitionAnimation:
                                                    PageTransitionAnimation
                                                        .cupertino,
                                              );
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 21.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    height: 28.0,
                                                    width: 90.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      color: Color(0xFF30A6CA),
                                                    ),
                                                    child: FittedBox(
                                                      fit: BoxFit.scaleDown,
                                                      child: Row(
                                                        children: [
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              left: 8.0,
                                                              right: 6.0,
                                                            ),
                                                            child: Image.asset(
                                                              'assets/images/hq/Icon material-timelapse.png',
                                                            ),
                                                          ),
                                                          Container(
                                                            margin:
                                                                EdgeInsets.only(
                                                              right: 8.0,
                                                            ),
                                                            child: Text(
                                                              doc.data()[
                                                                  'time_left'],
                                                              style: GoogleFonts
                                                                  .roboto(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                              maxLines: 1,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 8.0,
                                                  ),
                                                  Container(
                                                    height: 28.0,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      gradient: doc.data()[
                                                                  'particpants_percent'] ==
                                                              "20%"
                                                          ? LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color(
                                                                    0xFFc772ff),
                                                                Color(
                                                                    0xFFc78dff),
                                                                Color(
                                                                    0xffF7F7F7),
                                                                Color(
                                                                    0xffF7F7F7),
                                                                Color(
                                                                    0xffF7F7F7),
                                                              ],
                                                            )
                                                          : LinearGradient(
                                                              begin: Alignment
                                                                  .centerLeft,
                                                              end: Alignment
                                                                  .centerRight,
                                                              colors: [
                                                                Color(
                                                                    0xFFc772ff),
                                                                Color(
                                                                    0xFFc78dff),
                                                                Color(
                                                                    0xFFcaa6ff),
                                                                Color(
                                                                    0xffF7F7F7),
                                                                Color(
                                                                    0xffF7F7F7),
                                                              ],
                                                            ),
                                                    ),
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 4.0,
                                                            right: 5,
                                                          ),
                                                          child: Image.asset(
                                                            'assets/images/hq/Group 457.png',
                                                          ),
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            right: 5.0,
                                                          ),
                                                          child: Text(
                                                            doc.data()[
                                                                'particpants_percent'],
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontSize: 14.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pushNewScreen(
                                                context,
                                                screen: DetailsProduit(),
                                                withNavBar: false,
                                                pageTransitionAnimation:
                                                    PageTransitionAnimation
                                                        .cupertino,
                                              );
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 21.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Text(
                                                          doc.data()['title'],
                                                          style: GoogleFonts
                                                              .roboto(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                          maxLines: 1,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pushNewScreen(
                                                context,
                                                screen: DetailsProduit(),
                                                withNavBar: false,
                                                pageTransitionAnimation:
                                                    PageTransitionAnimation
                                                        .cupertino,
                                              );
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 21.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    "Prix magasin",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Text(
                                                    "Prix de départ",
                                                    style: GoogleFonts.roboto(
                                                      fontSize: 12.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 4.0,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              pushNewScreen(
                                                context,
                                                screen: DetailsProduit(),
                                                withNavBar: false,
                                                pageTransitionAnimation:
                                                    PageTransitionAnimation
                                                        .cupertino,
                                              );
                                            },
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 21.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    doc.data()['magasin_price'],
                                                    style: GoogleFonts.roboto(
                                                      decoration: TextDecoration
                                                          .lineThrough,
                                                      fontSize: 14.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                  ),
                                                  Container(
                                                    transform: Matrix4
                                                        .translationValues(
                                                            -46.0, 0.0, 0.0),
                                                    child: Text(
                                                      doc.data()[
                                                          'depart_price'],
                                                      style: GoogleFonts.roboto(
                                                        color: Colors.cyan,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: GestureDetector(
                                                  onTap: () async {
                                                    if (await canLaunch(url)) {
                                                      await launch(url);
                                                    } else {
                                                      throw 'Could not launch $url';
                                                    }
                                                  },
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      color: Color(0xFFF7F7F7),
                                                    ),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Expanded(
                                                              child: Container(
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 11.0,
                                                                  top: 11.0,
                                                                  right: 20.0,
                                                                ),
                                                                child:
                                                                    FittedBox(
                                                                  fit: BoxFit
                                                                      .scaleDown,
                                                                  child: Text(
                                                                    "Achetez directement et gagner",
                                                                    style: GoogleFonts
                                                                        .roboto(
                                                                      color: Color
                                                                          .fromARGB(
                                                                        255,
                                                                        102,
                                                                        102,
                                                                        102,
                                                                      ),
                                                                    ),
                                                                    maxLines: 1,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Container(
                                                              transform: Matrix4
                                                                  .translationValues(
                                                                      0.0,
                                                                      -5.0,
                                                                      0.0),
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 11.0,
                                                              ),
                                                              child: RichText(
                                                                text: TextSpan(
                                                                  text: doc
                                                                          .data()[
                                                                      'remise'],
                                                                  style:
                                                                      GoogleFonts
                                                                          .roboto(
                                                                    color: Colors
                                                                        .red,
                                                                    fontSize:
                                                                        12.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                  children: <
                                                                      TextSpan>[
                                                                    TextSpan(
                                                                      text:
                                                                          ' de remise',
                                                                      style: GoogleFonts
                                                                          .roboto(
                                                                        fontSize:
                                                                            12.0,
                                                                        color: Color
                                                                            .fromARGB(
                                                                          255,
                                                                          102,
                                                                          102,
                                                                          102,
                                                                        ),
                                                                        fontWeight:
                                                                            FontWeight.normal,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                right: 15.7,
                                                                top: 5.0,
                                                              ),
                                                              child: IconButton(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                constraints:
                                                                    BoxConstraints(),
                                                                icon:
                                                                    Image.asset(
                                                                  'assets/images/hq/Icon ionic-ios-arrow-dropright.png',
                                                                ),
                                                                onPressed: doc.data()[
                                                                            'title'] ==
                                                                        'HUAWEI SMART WATCH GT2'
                                                                    ? () {
                                                                        pushNewScreen(
                                                                          context,
                                                                          screen:
                                                                              DetailsProduit(),
                                                                          withNavBar:
                                                                              false,
                                                                          pageTransitionAnimation:
                                                                              PageTransitionAnimation.cupertino,
                                                                        );
                                                                      }
                                                                    : () {
                                                                        return null;
                                                                      },
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Container(
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 11.0,
                                                          ),
                                                          transform: Matrix4
                                                              .translationValues(
                                                                  0.0,
                                                                  -5.0,
                                                                  0.0),
                                                          child: Row(
                                                            children: [
                                                              Image.asset(
                                                                'assets/images/hq/Image 27.png',
                                                              ),
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 8.0,
                                          ),
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  height: 41,
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin:
                                                          Alignment.centerLeft,
                                                      end:
                                                          Alignment.centerRight,
                                                      colors: [
                                                        Color(0xffe25033),
                                                        Color(0xffeb6348),
                                                        Color(0xfff2755c),
                                                        Color(0xfff98770),
                                                        Color(0xffff9985),
                                                      ],
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10.0),
                                                  ),
                                                  alignment: Alignment.center,
                                                  child: Text(
                                                    doc.data()['button_text'],
                                                    style: GoogleFonts.roboto(
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height: 15.0,
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
                      ).toList(),
                    ),
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}
