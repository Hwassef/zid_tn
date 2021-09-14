import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangerpasseState extends StatefulWidget {
  @override
  ChangerPass createState() => ChangerPass();
}

class ChangerPass extends State {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
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
            Container(
              margin: EdgeInsets.only(top: 25.0),
              alignment: Alignment.center,
              child: Text(
                'Changer mot de passe',
                style: GoogleFonts.roboto(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            Expanded(
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: screenWidth,
                          margin: EdgeInsets.only(
                            left: 24.0,
                            right: 24.0,
                            top: 16.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xffA1BFC8).withOpacity(0.08),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.0, 24.0, 16.0, 0.0),
                                child: TextField(
                                  obscureText: _isObscure,
                                  decoration: InputDecoration(
                                      labelText: "Ancien mot de passe",
                                      labelStyle: TextStyle(
                                        color: Colors.cyan,
                                      ),
                                      suffixIcon: IconButton(
                                          icon: Icon(_isObscure
                                              ? Icons.visibility
                                              : Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              _isObscure = !_isObscure;
                                            });
                                          })),
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                        16.0, 16.5, 16.0, 16.5),
                                    child: TextField(
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                          labelText: "Nouveau mot de passe",
                                          labelStyle: GoogleFonts.roboto(
                                            color: Colors.cyan,
                                          ),
                                          suffixIcon: IconButton(
                                              icon: Icon(_isObscure
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                              onPressed: () {
                                                setState(() {
                                                  _isObscure = !_isObscure;
                                                });
                                              })),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 16.0,
                                      right: 16.0,
                                      bottom: 24.5,
                                    ),
                                    child: TextField(
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                          labelText: "Confirmer mot de passe",
                                          labelStyle: GoogleFonts.roboto(
                                            color: Colors.cyan,
                                          ),
                                          suffixIcon: IconButton(
                                              icon: Icon(_isObscure
                                                  ? Icons.visibility
                                                  : Icons.visibility_off),
                                              onPressed: () {
                                                setState(() {
                                                  _isObscure = !_isObscure;
                                                });
                                              })),
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
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(0.0),
        child: Container(
          height: 41.0,
          width: double.infinity,
          margin: EdgeInsets.only(
            left: 24.0,
            right: 24.0,
            bottom: 24.0,
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Confirmer"),
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
