import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tn_zid/Notifications.dart';
import 'package:tn_zid/details_produit.dart';
import 'package:tn_zid/prochaines.dart';
import 'package:tn_zid/termines.dart';
import 'package:tn_zid/user_profile.dart';

class EnCoursState extends StatefulWidget {
  @override
  Encours createState() => Encours();
}

class Encours extends State {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    RefreshProgressIndicator();
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    final db = FirebaseFirestore.instance;

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
        child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => EnCoursState(),
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
                            "En cours",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF30a6ca),
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
                            style: GoogleFonts.roboto(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('encheres')
                      .doc('tzeN1Q53El2TVdQeZAKu')
                      .snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    var Enchere_En_Cours = snapshot.data;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Stack(
                                fit: StackFit.loose,
                                clipBehavior: Clip.none,
                                children: [
                                  Container(
                                    height: 201.0,
                                    width: double.infinity,
                                    margin: EdgeInsets.fromLTRB(
                                      24.0,
                                      9.0,
                                      24.0,
                                      16.0,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10.0),
                                      color: Color(0xFFF7F7F7),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              margin: EdgeInsets.only(
                                                left: 7.0,
                                              ),
                                              transform:
                                                  Matrix4.translationValues(
                                                      0.0, -61.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/hq/Group 484.png',
                                              ),
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(top: 8.0),
                                              child: Image.asset(
                                                Enchere_En_Cours['image'],
                                                width: 150.0,
                                                height: 185.0,
                                              ),
                                            ),
                                            Container(
                                              transform:
                                                  Matrix4.translationValues(
                                                      5.0, -70.0, 0.0),
                                              child: IconButton(
                                                onPressed: () {
                                                  Enchere_En_Cours.reference
                                                      .update({
                                                    'is_favorite': true
                                                  });
                                                  if (Enchere_En_Cours[
                                                          'is_favorite'] ==
                                                      false) {
                                                    final snackBar = SnackBar(
                                                      content: Text(
                                                        'Produit ajouté avec succès à vos favoris',
                                                        textAlign:
                                                            TextAlign.center,
                                                      ),
                                                      behavior: SnackBarBehavior
                                                          .floating,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.all(
                                                          Radius.circular(20),
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                        seconds: 3,
                                                      ),
                                                    );
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(snackBar);
                                                  } else {
                                                    null;
                                                  }
                                                  if (Enchere_En_Cours[
                                                          'is_favorite'] ==
                                                      false) {
                                                    CollectionReference
                                                        FavoriteEncheres =
                                                        FirebaseFirestore
                                                            .instance
                                                            .collection(
                                                                'favorite_encheres');
                                                    FavoriteEncheres.add({
                                                      'title': Enchere_En_Cours[
                                                          'title'],
                                                      'button_text':
                                                          Enchere_En_Cours[
                                                              'button_text'],
                                                      'image': Enchere_En_Cours[
                                                          'image'],
                                                      'is_favorite':
                                                          Enchere_En_Cours[
                                                              'is_favorite'],
                                                      'magasin_price':
                                                          Enchere_En_Cours[
                                                              'magasin_price'],
                                                      'particpants_percent':
                                                          Enchere_En_Cours[
                                                              'particpants_percent'],
                                                      'remise':
                                                          Enchere_En_Cours[
                                                              'remise'],
                                                      'time_left':
                                                          Enchere_En_Cours[
                                                              'time_left'],
                                                      'vip': Enchere_En_Cours[
                                                          'vip'],
                                                      'depart_price':
                                                          Enchere_En_Cours[
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
                                                    Enchere_En_Cours[
                                                                'is_favorite'] ==
                                                            false
                                                        ? Positioned(
                                                            left: 4.7,
                                                            top: 5.15,
                                                            child: Image.asset(
                                                              'assets/images/hq/Icon ionic-ios-heart-empty.png',
                                                            ),
                                                          )
                                                        : Positioned(
                                                            left: 4.7,
                                                            top: 5.15,
                                                            child: Image.asset(
                                                              'assets/images/hq/Icon ionic-ios-heart.png',
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
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24.0,
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 119.0,
                                height: 28.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Color(0xFFE90C0C),
                                ),
                                alignment: Alignment.center,
                                child: Text(
                                  "En direct",
                                  style: GoogleFonts.roboto(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 8.0,
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                  top: 4.0,
                                  bottom: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  gradient: LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight,
                                    colors: [
                                      Color(0xffc772ff),
                                      Color(0xffc78dff),
                                      Color(0xffcaa6ff),
                                      Color(0xffd0bcff),
                                      Color(0xffdad1ff),
                                    ],
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 6.0,
                                      ),
                                      child: Image.asset(
                                        'assets/images/hq/Group 457.png',
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        left: 12.6,
                                        right: 14.0,
                                      ),
                                      child: Text(
                                        "100%",
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
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 24.0,
                            top: 4.0,
                          ),
                          child: Text(
                            Enchere_En_Cours['title'],
                            style: GoogleFonts.roboto(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 4.0,
                            left: 24.0,
                            right: 25.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Prix magasin",
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF666666),
                                ),
                              ),
                              Text(
                                "Prix en cours",
                                style: GoogleFonts.roboto(
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xFF666666),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 4.0,
                            left: 24.0,
                            right: 49.5,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Enchere_En_Cours['magasin_price'],
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                              Text(
                                "250 DT",
                                style: GoogleFonts.roboto(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFFE25033),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            top: 5.0,
                            left: 24.0,
                            right: 24.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            color: Color(0xFFF7F7F7),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 11.0,
                                      top: 8.0,
                                    ),
                                    child: Text(
                                      "Achetez directement et gagner",
                                      style: GoogleFonts.roboto(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.normal,
                                        color: Color(0xFF666666),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 11.0,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        text: Enchere_En_Cours['remise'],
                                        style: GoogleFonts.roboto(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFE4B28),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: "de remise",
                                            style: GoogleFonts.roboto(
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                              color: Color(0xFF666666),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                        right: 15.7,
                                        top: 5.0,
                                      ),
                                      child: IconButton(
                                        padding: EdgeInsets.zero,
                                        constraints: BoxConstraints(),
                                        icon: Image.asset(
                                          'assets/images/hq/Icon ionic-ios-arrow-dropright.png',
                                        ),
                                        onPressed: () {
                                          pushNewScreen(
                                            context,
                                            screen: DetailsProduit(),
                                            withNavBar: false,
                                            pageTransitionAnimation:
                                                PageTransitionAnimation
                                                    .cupertino,
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  left: 11.0,
                                  top: 4.0,
                                  bottom: 10.0,
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/images/hq/Image 27.png',
                                      width: 90.0,
                                      height: 21.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
