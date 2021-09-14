import 'package:flutter/material.dart';
import 'package:tn_zid/acheter_jetons.dart';
import 'package:tn_zid/autres.dart';
import 'package:tn_zid/mes_encheres.dart';
import 'package:tn_zid/mes_favoris_on.dart';
import 'package:tn_zid/prochaines.dart';

import 'item.dart';

class PersistentTabs extends StatelessWidget {
  const PersistentTabs({
    required this.screenWidgets,
    this.currentTabIndex = 0,
  });
  final int currentTabIndex;
  final List<Widget> screenWidgets;

  List<Widget> _buildOffstageWidgets() {
    return screenWidgets
        .map(
          (w) => Offstage(
            offstage: currentTabIndex != screenWidgets.indexOf(w),
            child: Navigator(
              onGenerateRoute: (routeSettings) {
                return MaterialPageRoute(builder: (_) => w);
              },
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: _buildOffstageWidgets(),
    );
  }
}

// DEMO
class PersistentTabsDemo extends StatefulWidget {
  @override
  _PersistentTabsDemoState createState() => _PersistentTabsDemoState();
}

class _PersistentTabsDemoState extends State<PersistentTabsDemo> {
  late int currentTabIndex;

  @override
  void initState() {
    super.initState();
    currentTabIndex = 0;
  }

  void setCurrentIndex(int val) {
    setState(() {
      currentTabIndex = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PersistentTabs(
        currentTabIndex: currentTabIndex,
        screenWidgets: [
          ProchainesState(),
          MesEncheres(),
          AcheterJetons(),
          MesFavorisOn(),
          Autres()
        ],
      ),
      bottomNavigationBar: Container(
        height: 88.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            onTap: setCurrentIndex,
            selectedFontSize: 0,
            currentIndex: currentTabIndex,
            backgroundColor: Colors.white,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: currentTabIndex == 0
                    ? Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        margin: EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/hq/Ellipse 325.png'),
                            Positioned(
                              top: 8.0,
                              left: 9.5,
                              child: Image.asset(
                                'assets/images/hq/Accueil.png',
                              ),
                            ),
                            Positioned(
                              top: 48.0,
                              left: 18.0,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 334.png'),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        margin: EdgeInsets.only(
                          top: 5.0,
                        ),
                        child: Image.asset(
                            'assets/images/hq/Unselected_Accueil.png'),
                      ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 1
                    ? Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/hq/Ellipse 325.png'),
                            Positioned(
                              top: 8.0,
                              left: 7.0,
                              child: Image.asset(
                                'assets/images/hq/Selected_Group 494.png',
                              ),
                            ),
                            Positioned(
                              left: 27.5,
                              top: 8.5,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 341.png'),
                            ),
                            Positioned(
                              left: 18.0,
                              top: 48.0,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 334.png'),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                                'assets/images/hq/Unselected_Group 494.png'),
                            Positioned(
                              left: 20.5,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 341.png'),
                            ),
                          ],
                        ),
                      ),
                label: "",
              ),
              BottomNavigationBarItem(
                // transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                icon: Stack(
                  fit: StackFit.loose,
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/hq/Ellipse 323.png',
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        left: 23.0,
                        top: 20.0,
                      ),
                      child: Image.asset(
                        'assets/images/hq/Icon feather-shopping-cart.png',
                      ),
                    ),
                  ],
                ),

                label: "",
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 3
                    ? Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/hq/Ellipse 325.png'),
                            Positioned(
                              top: 10.5,
                              left: 9.5,
                              child: Image.asset(
                                'assets/images/hq/Selected_Icon ionic-ios-heart-empty.png',
                              ),
                            ),
                            Positioned(
                              left: 18.0,
                              top: 48.0,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 334.png'),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Image.asset(
                            'assets/images/hq/Unselected_Icon ionic-ios-heart-empty.png'),
                      ),
                label: "",
              ),
              BottomNavigationBarItem(
                icon: currentTabIndex == 4
                    ? Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        child: Stack(
                          fit: StackFit.loose,
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset('assets/images/hq/Ellipse 325.png'),
                            Positioned(
                              top: 10.5,
                              left: 9.5,
                              child: Image.asset(
                                'assets/images/hq/Selected_Icon open-menu.png',
                              ),
                            ),
                            Positioned(
                              top: 48.0,
                              left: 18.0,
                              child: Image.asset(
                                  'assets/images/hq/Ellipse 334.png'),
                            ),
                          ],
                        ),
                      )
                    : Container(
                        transform: Matrix4.translationValues(0.0, -7.0, 0.0),
                        margin: EdgeInsets.only(
                          top: 5.0,
                        ),
                        child:
                            Image.asset('assets/images/hq/Icon open-menu.png'),
                      ),
                label: "",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
