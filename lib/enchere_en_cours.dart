import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tn_zid/acheter_jetons.dart';

class EnchereEnCours extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CountDownController _controller = CountDownController();
    int RestartAgain = 10;
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
          elevation: 0.0,
          backgroundColor: Colors.transparent,
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
                    'assets/images/Ellipse 355.png',
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
            Container(
              margin: EdgeInsets.only(
                right: 16.0,
                top: 16.0,
              ),
              child: Stack(
                fit: StackFit.loose,
                clipBehavior: Clip.none,
                children: [
                  Image.asset('assets/images/Ellipse 356.png'),
                  Positioned(
                    top: 9.0,
                    left: 8.5,
                    child: Image.asset('assets/images/Icon material-share.png'),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Image.asset(
                      'assets/images/watch-gt2-listimage-Matte-BlackDetailed.png',
                      height: 233.0,
                    ),
                  ),
                ],
              ),
              Expanded(
                child: ListView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Column(
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
                              child: Container(
                                margin: EdgeInsets.only(
                                  left: 24.0,
                                  right: 24.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                            color: Color(0xFFE41212),
                                          ),
                                          alignment: Alignment.center,
                                          margin: EdgeInsets.only(
                                            top: 16.0,
                                          ),
                                          padding: EdgeInsets.only(
                                            left: 16.0,
                                            top: 7.0,
                                            bottom: 7.0,
                                            right: 20.0,
                                          ),
                                          child: Text(
                                            "Enchére en direct",
                                            style: GoogleFonts.roboto(
                                              color: Colors.white,
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.normal,
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
                                    SizedBox(
                                      height: 8.0,
                                    ),
                                    FittedBox(
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
                                    SizedBox(
                                      height: 14.0,
                                    ),
                                    Row(
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
                                        Text(
                                          "Prix en cours",
                                          style: GoogleFonts.roboto(
                                            color: Color(0xFF666666),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 4.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "899DT",
                                          style: GoogleFonts.roboto(
                                            color: Colors.black,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.w500,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 19.0),
                                          child: Text(
                                            "1 DT",
                                            style: GoogleFonts.roboto(
                                              color: Color(0xFF30A6CA),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(right: 13.0),
                                          child: Text(
                                            "200.2 DT",
                                            style: GoogleFonts.roboto(
                                              color: Color(0xFFE25033),
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color: Color(0x30A6CA)
                                                  .withOpacity(0.1),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.only(
                                                    left: 16.0,
                                                    top: 10.0,
                                                  ),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "Nombre des jetons",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "disponible",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontSize: 12.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 2.0,
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "30",
                                                            style: GoogleFonts
                                                                .roboto(
                                                              fontSize: 30.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color(
                                                                  0xFF30A6CA),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      height: 41.0,
                                                      margin: EdgeInsets.only(
                                                        right: 16.0,
                                                      ),
                                                      child:
                                                          ElevatedButton.icon(
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        AcheterJetons()),
                                                          );
                                                        },
                                                        icon: Image.asset(
                                                            'assets/images/Icon feather-shopping-cart.png'),
                                                        label: Text(
                                                          "Acheter jetons",
                                                          style: GoogleFonts
                                                              .roboto(
                                                            fontSize: 14.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),
                                                        style: ElevatedButton
                                                            .styleFrom(
                                                          primary:
                                                              Color(0xffE25033),
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                        ),
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
                                    SizedBox(
                                      height: 24.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            var timer = _controller
                                                .getTime()
                                                .split(":");
                                            if ((int.parse(timer[1]) < 10) &&
                                                (int.parse(timer[1]) > 0)) {
                                              _controller.restart(duration: 10);
                                            }
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffE25033),
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                            ),
                                            height: 85.0,
                                            // width: 137.0,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 15.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Group 520.png',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        left: 16.0,
                                                        right: 16.0,
                                                      ),
                                                      child: Text(
                                                        "+0.100DT",
                                                        style:
                                                            GoogleFonts.roboto(
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                          child: CircularCountDownTimer(
                                            duration: 15,
                                            initialDuration: 0,
                                            controller: _controller,
                                            width: 55.0,
                                            height: 85.0,
                                            ringColor: Color(0x30A6CA)
                                                .withOpacity(0.1),
                                            ringGradient: null,
                                            fillColor: Color(0xFF30A6CA),
                                            fillGradient: null,
                                            backgroundColor: Colors.transparent,
                                            backgroundGradient: null,
                                            strokeWidth: 10.0,
                                            strokeCap: StrokeCap.round,
                                            textStyle: GoogleFonts.roboto(
                                              fontSize: 14.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                            textFormat:
                                                CountdownTextFormat.MM_SS,
                                            isReverse: true,
                                            isReverseAnimation: false,
                                            isTimerTextShown: true,
                                            autoStart: true,
                                            onStart: () {},
                                            onComplete: () {
                                              _controller.pause();
                                            },
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            var timer = _controller
                                                .getTime()
                                                .split(":");
                                            if ((int.parse(timer[1]) < 10) &&
                                                (int.parse(timer[1]) > 0)) {
                                              _controller.restart(duration: 10);
                                            }
                                          },
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: Color(0xffE25033),
                                              borderRadius:
                                                  BorderRadius.circular(13.0),
                                            ),
                                            height: 85.0,
                                            // width: 137.0,
                                            child: Column(
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      margin: EdgeInsets.only(
                                                        top: 15.0,
                                                      ),
                                                      child: Image.asset(
                                                        'assets/images/Group 520.png',
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 5.0,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                      padding: EdgeInsets.only(
                                                        left: 16.0,
                                                        right: 16.0,
                                                      ),
                                                      child: Text(
                                                        "+0.200DT",
                                                        style:
                                                            GoogleFonts.roboto(
                                                          color: Colors.white,
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
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
                                    SizedBox(
                                      height: 22.0,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Dernier enchérisseur",
                                          style: GoogleFonts.roboto(
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 16.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CircleAvatar(
                                          backgroundColor:
                                              Color(0xa10fd5).withOpacity(0.1),
                                          radius: 30.0,
                                          child: Text(
                                            "ABA",
                                            style: GoogleFonts.roboto(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFFA10FD5),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.only(
                                            left: 10.0,
                                          ),
                                          transform: Matrix4.translationValues(
                                            0.0,
                                            -12.0,
                                            0.0,
                                          ),
                                          child: Text(
                                            "Ahmed ben ahmed",
                                            style: GoogleFonts.roboto(
                                              fontSize: 14.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          transform: Matrix4.translationValues(
                                            -116.5,
                                            4.0,
                                            0.0,
                                          ),
                                          child: Text(
                                            "il ya 2 min",
                                            style: GoogleFonts.roboto(
                                              color: Color(0xFF999999),
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          transform: Matrix4.translationValues(
                                            73.0,
                                            -68.0,
                                            0.0,
                                          ),
                                          child: Text(
                                            "+0.2",
                                            style: GoogleFonts.roboto(
                                              color: Color(0xFFe25033),
                                              fontSize: 11.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 30.0,
                                          width: 74.0,
                                          transform: Matrix4.translationValues(
                                            0.0,
                                            -45.0,
                                            0.0,
                                          ),
                                          decoration: BoxDecoration(
                                            color: Color(0xFFffe046),
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "200.2 DT",
                                              style: GoogleFonts.roboto(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 19.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
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
  }
}
