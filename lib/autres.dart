import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:tn_zid/Mentien_legales.dart';
import 'package:tn_zid/Notifications.dart';
import 'package:tn_zid/comment_ca_marche.dart';
import 'package:tn_zid/information_securite.dart';
import 'package:tn_zid/partenariat.dart';
import 'package:tn_zid/terms_condidtions.dart';
import 'package:tn_zid/user_profile.dart';

class Autres extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Container(
            child: Image.asset('assets/images/Logo.png'),
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
              Container(
                margin: EdgeInsets.only(
                  top: 25.8,
                  left: 24.0,
                  bottom: 0.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Autres",
                      style: GoogleFonts.roboto(
                        fontSize: 20.0,
                        height: 0.8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: Partenariat(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xFFF7F7F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                ),
                                child: Text(
                                  'Partenariat',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      // top: 10.5,
                                      // left: 2.5,
                                      child: Image.asset(
                                        'assets/images/hq/Ellipse 371.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 16.2,
                                      left: 17.0,
                                      child: Image.asset(
                                          'assets/images/hq/Path 1021.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: CommentaCaMarche(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xFFF7F7F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                ),
                                child: Text(
                                  'Comment ça marche',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      // top: 10.5,
                                      // left: 2.5,
                                      child: Image.asset(
                                        'assets/images/hq/Ellipse 371.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 16.2,
                                      left: 17.0,
                                      child: Image.asset(
                                          'assets/images/hq/Path 1021.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: InformationSecurite(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xFFF7F7F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                ),
                                child: Text(
                                  'Information de sécurité',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      // top: 10.5,
                                      // left: 2.5,
                                      child: Image.asset(
                                        'assets/images/hq/Ellipse 371.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 16.2,
                                      left: 17.0,
                                      child: Image.asset(
                                          'assets/images/hq/Path 1021.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: Terms_Conditions(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xFFF7F7F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                ),
                                child: Text(
                                  'Termes et conditions',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      // top: 10.5,
                                      // left: 2.5,
                                      child: Image.asset(
                                        'assets/images/hq/Ellipse 371.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 16.2,
                                      left: 17.0,
                                      child: Image.asset(
                                          'assets/images/hq/Path 1021.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        pushNewScreen(
                          context,
                          screen: Mention_Legales(),
                          withNavBar: false,
                          pageTransitionAnimation:
                              PageTransitionAnimation.cupertino,
                        );
                      },
                      child: Container(
                        height: 70.0,
                        margin: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
                        child: Card(
                          elevation: 0.0,
                          color: Color(0xFFF7F7F7),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                ),
                                child: Text(
                                  'Mention légales',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                  right: 16.0,
                                ),
                                child: Stack(
                                  fit: StackFit.loose,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      // top: 10.5,
                                      // left: 2.5,
                                      child: Image.asset(
                                        'assets/images/hq/Ellipse 371.png',
                                      ),
                                    ),
                                    Positioned(
                                      top: 16.2,
                                      left: 17.0,
                                      child: Image.asset(
                                          'assets/images/hq/Path 1021.png'),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(24.0, 24.0, 0.0, 0.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Restez Connecté",
                                style: GoogleFonts.roboto(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              top: 16.0,
                              bottom: 40.0,
                            ),
                            child: Row(
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.facebook,
                                  color: Color(0xFF1976D2),
                                  size: 40.0,
                                ),
                                SizedBox(
                                  width: 24.0,
                                ),
                                CircleAvatar(
                                  radius: 20.2,
                                  backgroundColor: Color(0xFF03A9F4),
                                  child: FaIcon(
                                    FontAwesomeIcons.twitter,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 24.0,
                                ),
                                CircleAvatar(
                                  radius: 20.2,
                                  backgroundColor: Color(0xFFF86661),
                                  child: FaIcon(
                                    FontAwesomeIcons.instagram,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 24.0,
                                ),
                                CircleAvatar(
                                  radius: 20.2,
                                  backgroundColor: Color(0xFF1A7EC1),
                                  child: FaIcon(
                                    FontAwesomeIcons.linkedinIn,
                                    color: Colors.white,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
