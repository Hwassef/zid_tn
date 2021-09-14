import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tn_zid/acheter_jetons.dart';
import 'package:tn_zid/enchere_en_cours.dart';
import 'package:tn_zid/modifier_informations.dart';

class DetailsProduit extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('encheres')
          .doc('tzeN1Q53El2TVdQeZAKu')
          .snapshots(),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        var Enchere_En_Cours = snapshot.data;

        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Rectangle 281.png'),
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
                        'assets/images/details_produit_favorite_container.png',
                      ),
                      Positioned(
                        top: 10.0,
                        left: 12.0,
                        child: Image.asset(
                          'assets/images/Icon material-keyboard-arrow-leftWhite.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Enchere_En_Cours.reference.update({'is_favorite': true});
                    if (Enchere_En_Cours['is_favorite'] == false) {
                      final snackBar = SnackBar(
                        content: Text(
                          'Produit ajouté avec succès à vos favoris',
                          textAlign: TextAlign.center,
                        ),
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        duration: Duration(
                          seconds: 3,
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      null;
                    }
                    if (Enchere_En_Cours['is_favorite'] == false) {
                      CollectionReference FavoriteEncheres = FirebaseFirestore
                          .instance
                          .collection('favorite_encheres');
                      FavoriteEncheres.add({
                        'title': Enchere_En_Cours['title'],
                        'button_text': Enchere_En_Cours['button_text'],
                        'image': Enchere_En_Cours['image'],
                        'is_favorite': Enchere_En_Cours['is_favorite'],
                        'magasin_price': Enchere_En_Cours['magasin_price'],
                        'particpants_percent':
                            Enchere_En_Cours['particpants_percent'],
                        'remise': Enchere_En_Cours['remise'],
                        'time_left': Enchere_En_Cours['time_left'],
                        'vip': Enchere_En_Cours['vip'],
                        'depart_price': Enchere_En_Cours['depart_price'],
                      });
                    } else {
                      return null;
                    }
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      right: 8.0,
                      top: 16.0,
                    ),
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.loose,
                      children: [
                        Image.asset(
                          'assets/images/details_produit_favorite_container.png',
                        ),
                        Enchere_En_Cours['is_favorite'] == false
                            ? Positioned(
                                top: 8.0,
                                left: 7.5,
                                child: Image.asset(
                                    'assets/images/details_produit_favorite_icon_button.png'),
                              )
                            : Positioned(
                                top: 8.0,
                                left: 7.5,
                                child: Image.asset(
                                  'assets/images/details_produit_favorite_icon_button_filled.png',
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
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
                          'assets/images/details_produit_favorite_container.png'),
                      Positioned(
                        top: 9.0,
                        left: 8.5,
                        child: Image.asset(
                            'assets/images/Icon material-share.png'),
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
                  ImageSlideshow(
                    width: double.infinity,
                    height: 238,
                    initialPage: 0,
                    indicatorColor: Color(0xFFE25033),
                    indicatorBackgroundColor: Colors.white,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 24.0),
                        child: Image.asset(
                          'assets/images/watch-gt2-listimage-Matte-BlackDetailed.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24.0),
                        child: Image.asset(
                          'assets/images/smartwatch2.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24.0),
                        child: Image.asset(
                          'assets/images/smartwatch3.png',
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 24.0),
                        child: Image.asset(
                          'assets/images/smartwatch4.png',
                        ),
                      ),
                    ],
                    onPageChanged: (value) {},
                  ),
                  Expanded(
                    child: ListView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: [
                        Column(
                          children: [
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30.0),
                                  topRight: Radius.circular(30.0),
                                ),
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      top: 16.0,
                                      bottom: 16.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          height: 28.0,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Color(0xFF30A6CA),
                                          ),
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: Row(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 8.0,
                                                ),
                                                child: Image.asset(
                                                  'assets/images/Icon material-timelapse.png',
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 6.0,
                                                ),
                                                child: Text(
                                                  "04h 27m 03s",
                                                  style: GoogleFonts.roboto(
                                                    fontSize: 14.0,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 83.0,
                                          height: 28.0,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            gradient: LinearGradient(
                                              begin: Alignment.centerLeft,
                                              end: Alignment.centerRight,
                                              colors: [
                                                Color(0xffc772ff),
                                                Color(0xffc78dff),
                                                Color(0xffcaa6ff),
                                                Color(0xffF7F7F7),
                                                Color(0xffF7F7F7),
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
                                                  'assets/images/Group 457.png',
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 15.6,
                                                ),
                                                child: Text(
                                                  "65%",
                                                  style: GoogleFonts.roboto(),
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
                                      right: 24.0,
                                      bottom: 8.0,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "HUAWEI SMART WATCH GT2",
                                          style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 14.0,
                                    ),
                                    child: FittedBox(
                                      fit: BoxFit.scaleDown,
                                      child: Row(
                                        children: [
                                          Text(
                                            "Montre Connecté HUAWEI Watch GT2 Sport Edition",
                                            style: GoogleFonts.roboto(
                                              color: Colors.black,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                            maxLines: 1,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 4.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Prix magasin",
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFF666666),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                        Text(
                                          "Prix de départ",
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFF666666),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 10.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "899DT",
                                          style: GoogleFonts.roboto(
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Container(
                                          transform: Matrix4.translationValues(
                                              -45.0, 0.0, 0.0),
                                          child: Text(
                                            "1 DT",
                                            style: GoogleFonts.roboto(
                                              color: Color(0xFF30A6CA),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 24.0,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            pushNewScreen(
                                              context,
                                              screen: EnchereEnCours(),
                                              withNavBar: false,
                                              pageTransitionAnimation:
                                                  PageTransitionAnimation
                                                      .cupertino,
                                            );
                                          },
                                          child: Container(
                                            width: (screenWidth - 24) / 2,
                                            height: 41.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight,
                                                colors: [
                                                  Color(0xFFe25033),
                                                  Color(0xFFeb6348),
                                                  Color(0xFFf2755c),
                                                  Color(0xFFf98770),
                                                  Color(0xFFff9985),
                                                ],
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.only(
                                              left: 37.0,
                                              right: 36.0,
                                            ),
                                            child: FittedBox(
                                              fit: BoxFit.scaleDown,
                                              child: Text(
                                                "Participez à 6 DT",
                                                style: GoogleFonts.roboto(
                                                  color: Colors.white,
                                                  fontSize: 14.0,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                                maxLines: 1,
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 16.0,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            pushNewScreen(
                                              context,
                                              screen: AcheterJetons(),
                                              withNavBar: false,
                                              pageTransitionAnimation:
                                                  PageTransitionAnimation
                                                      .cupertino,
                                            );
                                          },
                                          child: Container(
                                            width: (screenWidth - 104.0) / 2,
                                            height: 41.0,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              border: Border.all(
                                                width: 3,
                                                color: Color(0xffE25033),
                                              ),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "Acheter jetons",
                                              style: GoogleFonts.roboto(
                                                color: Color(0xffE25033),
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      bottom: 15.5,
                                    ),
                                    child: Row(
                                      children: [
                                        Text(
                                          "Description",
                                          style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                    ),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1.5,
                                        color: Color(0XFF999999),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 8.0,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Color(0xFFF7F7F7),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(),
                                            margin: EdgeInsets.fromLTRB(
                                              20.0,
                                              21.0,
                                              12.0,
                                              17.0,
                                            ),
                                            child: Text(
                                              'Montre Connecté HUAWEI Watch GT2 Sport Edition -  Écran: AMOLED 1.39 (454x 454) 46 mm - Systéme  d'
                                              'exploitation: Android/iOS - Connectivité: Bluetooth  4.1 - Mémoire RAM: 32 Mo - Capacité: 4Go -  Capacité de Batterie: 455 mAh - Système de  localisation: GPS - Capteurs: capteur accéléromètre,  capteur gyroscope, capteur géomagnétique, capteur  optique de fréquence cardiaque, capteur de lumière  ambiante, capteur de pression atmosphérique,  capteur capacitif - Matériaux: Métal + plastique -  Résistant à l'
                                              'eau: 5ATM résistant à l'
                                              'eau -  Dimensions: 45,9 x 45,9 x 10,7 mm - Poids: 41 gr -  Couleur: Noir ',
                                              style: GoogleFonts.roboto(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
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
                                            left: 24.0,
                                            right: 24.0,
                                            bottom: 14.0,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
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
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        color:
                                                            Color(0xFF666666),
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
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    RichText(
                                                      text: TextSpan(
                                                        text: "279DT ",
                                                        style:
                                                            GoogleFonts.roboto(
                                                          fontSize: 14.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              Color(0xFFFE4B28),
                                                        ),
                                                        children: [
                                                          TextSpan(
                                                            text: "de remise",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color: Color(
                                                                  0xFF666666),
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
                                                        padding:
                                                            EdgeInsets.zero,
                                                        constraints:
                                                            BoxConstraints(),
                                                        icon: Image.asset(
                                                          'assets/images/Icon ionic-ios-arrow-dropright.png',
                                                        ),
                                                        onPressed: () {},
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                  left: 11.0,
                                                  top: 4.0,
                                                  bottom: 6.0,
                                                ),
                                                child: Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/images/Image 27.png',
                                                      width: 90.0,
                                                      height: 21.0,
                                                    ),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25.0,
                                  ),
                                ],
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
          ),
        );
      },
    );
  }
}
