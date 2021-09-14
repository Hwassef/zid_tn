import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModifierInformationState extends StatefulWidget {
  @override
  Modifier_Information createState() => Modifier_Information();
}

class Modifier_Information extends State {
  String _value = 'Ariana';
  final List<String> list_items = <String>[
    'Tunis',
    'Ariana',
    'Ben Arous',
    'Mannouba',
    'Bizerte',
    'Nabeul',
    'Béja',
    'Jendouba',
    'Zaghouan',
    'Siliana',
    'Kef',
    'Sousse',
    'Monastir',
    'Mahdia',
    'Kasserine',
    'Sidi Bouzid',
    'Kairouan',
    'Gafsa',
    'Sfax',
    'Gabès',
    'Médenine',
    'Tozeur',
    'Kebili',
    'Ttataouine'
  ];
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
              margin: EdgeInsets.only(
                top: 23.8,
              ),
              alignment: Alignment.center,
              child: Text(
                "Modifer mes informations",
                style: GoogleFonts.roboto(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
                          width: double.infinity,
                          margin: EdgeInsets.fromLTRB(
                            25.0,
                            24.0,
                            24.0,
                            0.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                            border: Border.all(
                              width: 2,
                              color: Color(0xFf999999),
                            ),
                          ),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(
                                  24.0,
                                  24.0,
                                  24.0,
                                  0.0,
                                ),
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                    labelText: "Nom*",
                                    labelStyle: GoogleFonts.roboto(
                                      color: Colors.cyan,
                                    ),
                                  ),
                                  initialValue: "Ben Foulen",
                                ),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 0.0,
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.name,
                                      decoration: InputDecoration(
                                        labelText: "Prénom*",
                                        labelStyle: TextStyle(
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      initialValue: "Foulen",
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 0.0,
                                    ),
                                    child: TextFormField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        labelText: "Pseudo*",
                                      ),
                                      initialValue: "Gladiator001",
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 0.0,
                                    ),
                                    child: TextFormField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        labelText: "E-mail*",
                                      ),
                                      initialValue: "FBFoulen@gmail.com",
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      left: 24.0,
                                      right: 24.0,
                                      bottom: 0.0,
                                    ),
                                    child: TextFormField(
                                      keyboardType: TextInputType.phone,
                                      decoration: InputDecoration(
                                        labelText: "Téléphone/Mobile*",
                                        labelStyle: TextStyle(
                                          color: Colors.cyan,
                                        ),
                                      ),
                                      initialValue: "98xxxxxx",
                                    ),
                                  ),
                                ],
                              ),
                              // Column(
                              //   crossAxisAlignment: CrossAxisAlignment.start,
                              //   children: [
                              //     Container(
                              //       margin: EdgeInsets.only(
                              //         left: 24.0,
                              //         top: 12.0,
                              //       ),
                              //       child: Text(
                              //         "Region*",
                              //         style: TextStyle(
                              //           color: Colors.cyan,
                              //           fontSize: 14.0,
                              //         ),
                              //       ),
                              //     ),
                              //     Container(
                              //       transform: Matrix4.translationValues(
                              //           0.0, -27.0, 0.0),
                              //       padding: EdgeInsets.all(23),
                              //       child: DropdownButtonHideUnderline(
                              //         child: DropdownButton(
                              //           value: _value,
                              //           items: list_items.map((String item) {
                              //             return DropdownMenuItem<String>(
                              //               child: Text(item),
                              //               value: item,
                              //             );
                              //           }).toList(),
                              //           onChanged: (_) {},
                              //           elevation: 0,
                              //           style: TextStyle(
                              //               color: Colors.black, fontSize: 16),
                              //           icon: Icon(Icons.arrow_drop_down_circle,
                              //               color: Colors.black),
                              //           isExpanded: true,
                              //         ),
                              //       ),
                              //     ),
                              //   ],
                              // ),
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
            child: Text(
              "Metttre à jour",
              style: GoogleFonts.roboto(),
            ),
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
