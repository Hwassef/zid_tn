import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tn_zid/MyBullet.dart';

class InformationSecurite extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Container(
          child: Image.asset('assets/images/Logo.png'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
          color: Colors.black87,
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
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(
                    top: 25.0,
                    left: 24.0,
                  ),
                  child: Text(
                    'Information de sécurité',
                    style: GoogleFonts.roboto(
                      height: 0.8,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(
                  right: 27.0,
                ),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 26.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                child: new MyBullet(),
                                margin: EdgeInsets.only(
                                  right: 5.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "In occaecat Lorem et voluptate",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 44.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          SelectableText(
                            "Elit nisi irure nostrud officia quis aliqua veniam reprehenderit ut occaecat quis. Commodo dolore velit laboris nisi ut mollit magna laborum nulla pariatur dolore nulla. Aliqua et elit ea duis pariatur laboris occaecat. Consequat dolor labore dolor id adipisicing labore elit qui anim sint proident cupidatat duis. Lorem eiusmod dolore ullamco amet enim deserunt velit nisi ut.",
                            style: GoogleFonts.roboto(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 26.0,
                        right: 27.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                child: new MyBullet(),
                                margin: EdgeInsets.only(
                                  right: 5.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "In occaecat Lorem et voluptate",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 44.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          SelectableText(
                            "Aute deserunt quis elit culpa et Lorem sint dolore incididunt in cupidatat cupidatat dolor aliqua. Proident nulla irure enim laboris cillum. Culpa excepteur eiusmod est reprehenderit sunt aliquip eu exercitation esse commodo esse magna commodo eu.",
                            style: GoogleFonts.roboto(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 26.0),
                      child: Wrap(
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                child: new MyBullet(),
                                margin: EdgeInsets.only(
                                  right: 5.0,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  "Nisi occaecat consectetur deserunt",
                                  style: GoogleFonts.roboto(
                                    fontSize: 16.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 44.0,
                      ),
                      child: Wrap(
                        children: <Widget>[
                          SelectableText(
                            "Non ad elit minim ex sunt deserunt sunt ipsum. Lorem excepteur culpa ad aute consectetur nulla aute. Ipsum ad duis nulla exercitation culpa est consequat consequat pariatur fugiat. Adipisicing elit ea aliqua ut ea anim dolore laboris veniam nisi anim officia ex.",
                            style: GoogleFonts.roboto(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
