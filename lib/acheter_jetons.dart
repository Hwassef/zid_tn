import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tn_zid/packs.dart';
import 'package:tn_zid/packs.dart';

class AcheterJetons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    List<Packs> pack = [
      Packs(
        nbClicks: 50,
        vip: true,
        prix: 100,
      ),
      Packs(
        nbClicks: 100,
        vip: true,
        prix: 200,
      ),
      Packs(
        nbClicks: 5,
        vip: false,
        prix: 7,
      ),
      Packs(
        nbClicks: 10,
        vip: false,
        prix: 13,
      ),
      Packs(
        nbClicks: 15,
        vip: false,
        prix: 19,
      ),
      Packs(
        nbClicks: 20,
        vip: false,
        prix: 25,
      ),
      Packs(
        nbClicks: 25,
        vip: false,
        prix: 30,
      ),
    ];
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
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 24.0,
                    top: 29.8,
                  ),
                  child: Container(
                    child: Text(
                      "Acheter Jetons",
                      style: GoogleFonts.roboto(
                        height: 0.8,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: pack.length,
                itemBuilder: (BuildContext context, int index) {
                  return Stack(
                    fit: StackFit.loose,
                    clipBehavior: Clip.none,
                    children: [
                      Card(
                        elevation: 0.0,
                        margin: pack[index].vip == true
                            ? EdgeInsets.fromLTRB(24.0, 19.0, 24.0, 0.0)
                            : EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 0.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: pack[index].vip == true
                            ? Color(0xFF0E214D)
                            : Color(0xFFF5F5F5),
                        child: Column(
                          children: [
                            Stack(
                              fit: StackFit.loose,
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  height: 110.0,
                                  margin: EdgeInsets.only(
                                    left: 23.0,
                                    right: 16.0,
                                  ),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 26.0,
                                              left: 8.0,
                                            ),
                                            child: Text(
                                              "PACK\n" +
                                                  pack[index]
                                                      .nbClicks
                                                      .toString() +
                                                  ' CLICS',
                                              style: GoogleFonts.roboto(
                                                color: Color(0xFF30a6ca),
                                                fontSize: 23.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 10.0,
                                            ),
                                            transform:
                                                Matrix4.translationValues(
                                              -28.0,
                                              0.0,
                                              0.0,
                                            ),
                                            child: pack[index].vip == true
                                                ? Image.asset(
                                                    'assets/images/Group 484.png',
                                                  )
                                                : null,
                                          ),
                                          Container(
                                            transform:
                                                Matrix4.translationValues(
                                              0.0,
                                              -12.0,
                                              0.0,
                                            ),
                                            child: Text(
                                              pack[index].prix.toString() +
                                                  'DT',
                                              style: GoogleFonts.roboto(
                                                color: pack[index].vip == true
                                                    ? Colors.white
                                                    : Colors.black,
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Positioned(
                                  top: 53.0,
                                  left: screenWidth - 165.0,
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 101.0,
                                        height: 41.0,
                                        margin: EdgeInsets.only(
                                          right: 16.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE25033),
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
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
                                            )
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
                      )
                    ],
                  );
                },
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }
}
