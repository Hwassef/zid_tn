import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Partenariat extends StatelessWidget {
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
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(
                top: 25.0,
                left: 24.0,
              ),
              child: Text(
                'Partenariat',
                style: TextStyle(
                  height: 0.8,
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: 16.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/1.webp',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          right: 24.0,
                          top: 16.0,
                        ),
                        child: Image.asset(
                          'assets/images/1.webp',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: 16.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          right: 24.0,
                          top: 16.0,
                        ),
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: 16.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/audi.jpg',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          right: 24.0,
                          top: 16.0,
                        ),
                        child: Image.asset(
                          'assets/images/audi.jpg',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 150.0,
                        margin: EdgeInsets.only(
                          left: 24.0,
                          top: 16.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/aem.png',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                      Container(
                        width: 150.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          ),
                        ),
                        margin: EdgeInsets.only(
                          right: 24.0,
                          top: 16.0,
                        ),
                        child: Image.asset(
                          'assets/images/aem.png',
                          width: 150.0,
                          height: 110.0,
                        ),
                      ),
                    ],
                  ),
                  /*Container(
                      margin: EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 24.0,
                            ),
                            child: Image.asset(
                              'assets/images/logo.jpg',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(
                              right: 24.0,
                            ),
                            child: Image.asset(
                              'assets/images/logo.jpg',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 24.0,
                            ),
                            child: Image.asset(
                              'assets/images/audi.jpg',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(
                              right: 24.0,
                              // right: 16.0,
                            ),
                            child: Image.asset(
                              'assets/images/audi.jpg',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: 16.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              left: 24.0,
                            ),
                            child: Image.asset(
                              'assets/images/aem.png',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white,
                            ),
                            margin: EdgeInsets.only(
                              right: 24.0,
                              // right: 16.0,
                            ),
                            child: Image.asset(
                              'assets/images/aem.png',
                              height: 200,
                              width: 140.0,
                            ),
                          ),
                        ],
                      ),
                    ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
