import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tn_zid/Notifications.dart';
import 'package:tn_zid/details_produit.dart';
import 'package:tn_zid/enchere_en_cours.dart';
import 'package:tn_zid/user_profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'item.dart';

class MesEncheres extends StatefulWidget {
  @override
  MesEncheresState createState() => MesEncheresState();
}

class MesEncheresState extends State {
  @override
  Widget build(BuildContext context) {
    final db = FirebaseFirestore.instance;
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
              child: Image.asset('assets/images/Logo.png'),
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
                    'assets/images/Ellipse 338New.png',
                  ),
                  Positioned(
                    top: 10.0,
                    left: 10.0,
                    child: Image.asset(
                      'assets/images/Icon feather-bell.png',
                    ),
                  ),
                  Positioned(
                    left: 20.0,
                    top: 10.0,
                    child: Image.asset('assets/images/Ellipse 339.png'),
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
                    'assets/images/Ellipse 336New.png',
                  ),
                  Positioned(
                    top: 9.0,
                    left: 12.0,
                    child: Image.asset(
                      'assets/images/profil.png',
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 24.0,
                    top: 18.8,
                  ),
                  child: Text(
                    "Mes Encheres",
                    style: TextStyle(
                      height: 0.8,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Roboto',
                    ),
                  ),
                )
              ],
            ),
            StreamBuilder<QuerySnapshot>(
              stream: db.collection('encheres').orderBy('title').snapshots(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data.size == 0) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Expanded(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    children: snapshot.data!.docs.map<Widget>((doc) {
                      return Card(
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: 9.0,
                        ),
                        elevation: 0.0,
                        child: doc.data()['particpated'] == true
                            ? Container(
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
                                                border: doc.data()['vip'] ==
                                                        true
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
                                                          margin:
                                                              EdgeInsets.only(
                                                            left: 4.0,
                                                            top: 9.0,
                                                          ),
                                                          child: doc.data()[
                                                                      'vip'] ==
                                                                  true
                                                              ? Image.asset(
                                                                  'assets/images/Group 484.png',
                                                                  width: 39.52,
                                                                  height: 39.51,
                                                                )
                                                              : null,
                                                        ),
                                                        Container(
                                                          transform: Matrix4
                                                              .translationValues(
                                                                  5.0,
                                                                  0.0,
                                                                  0.0),
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
                                                                      Radius.circular(
                                                                          20),
                                                                    ),
                                                                  ),
                                                                  duration:
                                                                      Duration(
                                                                    seconds: 3,
                                                                  ),
                                                                );
                                                                ScaffoldMessenger.of(
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
                                                                  'button_text':
                                                                      doc.data()[
                                                                          'button_text'],
                                                                  'image': doc
                                                                          .data()[
                                                                      'image'],
                                                                  'is_favorite':
                                                                      doc.data()[
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
                                                                  'depart_price':
                                                                      doc.data()[
                                                                          'depart_price'],
                                                                });
                                                              } else {
                                                                return null;
                                                              }
                                                            },
                                                            icon: Stack(
                                                              children: [
                                                                Image.asset(
                                                                    'assets/images/Ellipse 332.png'),
                                                                doc.data()['is_favorite'] ==
                                                                        false
                                                                    ? Positioned(
                                                                        left:
                                                                            4.7,
                                                                        top:
                                                                            5.15,
                                                                        child: Image.asset(
                                                                            'assets/images/Icon ionic-ios-heart-empty.png'),
                                                                      )
                                                                    : Positioned(
                                                                        left:
                                                                            4.7,
                                                                        top:
                                                                            5.15,
                                                                        child: Image.asset(
                                                                            'assets/images/Icon ionic-ios-heart.png'),
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
                                                transform: doc
                                                            .data()['title'] ==
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
                                                margin: EdgeInsets.only(
                                                    right: 21.0),
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
                                                            BorderRadius
                                                                .circular(8.0),
                                                        color:
                                                            Color(0xFF30A6CA),
                                                      ),
                                                      child: FittedBox(
                                                        fit: BoxFit.scaleDown,
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                left: 8.0,
                                                                right: 6.0,
                                                              ),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/Icon material-timelapse.png',
                                                              ),
                                                            ),
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                right: 8.0,
                                                              ),
                                                              child: Text(
                                                                doc.data()[
                                                                    'time_left'],
                                                                style:
                                                                    GoogleFonts
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
                                                            BorderRadius
                                                                .circular(8.0),
                                                        gradient:
                                                            LinearGradient(
                                                          begin: Alignment
                                                              .centerLeft,
                                                          end: Alignment
                                                              .centerRight,
                                                          colors: [
                                                            Color(0xFFc772ff),
                                                            Color(0xFFc78dff),
                                                            Color(0xFFcaa6ff),
                                                            Color(0xffF7F7F7),
                                                            Color(0xffF7F7F7),
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
                                                              'assets/images/Group 457.png',
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
                                                margin: EdgeInsets.only(
                                                    right: 21.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: FittedBox(
                                                          fit: BoxFit.scaleDown,
                                                          child: Text(
                                                            doc.data()['title'],
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
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
                                                margin: EdgeInsets.only(
                                                    right: 21.0),
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
                                                margin: EdgeInsets.only(
                                                    right: 21.0),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      doc.data()[
                                                          'magasin_price'],
                                                      style: GoogleFonts.roboto(
                                                        decoration:
                                                            TextDecoration
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
                                                        style:
                                                            GoogleFonts.roboto(
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
                                                      if (await canLaunch(
                                                          url)) {
                                                        await launch(url);
                                                      } else {
                                                        throw 'Could not launch $url';
                                                      }
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        color:
                                                            Color(0xFFF7F7F7),
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          Row(
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
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
                                                                      maxLines:
                                                                          1,
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
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  left: 11.0,
                                                                ),
                                                                child: RichText(
                                                                  text:
                                                                      TextSpan(
                                                                    text: doc
                                                                            .data()[
                                                                        'remise'],
                                                                    style: GoogleFonts
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
                                                                          color:
                                                                              Color.fromARGB(
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
                                                                margin:
                                                                    EdgeInsets
                                                                        .only(
                                                                  right: 15.7,
                                                                  top: 5.0,
                                                                ),
                                                                child:
                                                                    IconButton(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .zero,
                                                                  constraints:
                                                                      BoxConstraints(),
                                                                  icon: Image
                                                                      .asset(
                                                                    'assets/images/Icon ionic-ios-arrow-dropright.png',
                                                                  ),
                                                                  onPressed:
                                                                      doc.data()['title'] ==
                                                                              'HUAWEI SMART WATCH GT2'
                                                                          ? () {
                                                                              pushNewScreen(
                                                                                context,
                                                                                screen: DetailsProduit(),
                                                                                withNavBar: false,
                                                                                pageTransitionAnimation: PageTransitionAnimation.cupertino,
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
                                                                  'assets/images/Image 27.png',
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
                                                  child: AbsorbPointer(
                                                    absorbing: false,
                                                    child: Container(
                                                      height: 41,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            Color(0xFFF7F7F7),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10.0),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "J'ai participé",
                                                        style: TextStyle(
                                                          color: Colors.grey,
                                                          fontSize: 14.0,
                                                        ),
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
                              )
                            : null,
                      );
                    }).toList(),
                  ),
                );
              },
            ),
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
    );
  }
}
