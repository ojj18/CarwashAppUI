import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/package/Tiles_package1.dart';
import 'package:Wecarcare/package/Tiles_package2.dart';
import 'package:Wecarcare/package/Tiles_package3.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Packages extends StatefulWidget {
  @override
  _PackagesState createState() => _PackagesState();
}

class _PackagesState extends State<Packages> {
  bool checkBoxValue = false;
  List<IconData> _icon = [
    FontAwesome.caret_right,
    FontAwesome.caret_down,
  ];
  bool package1 = false;
  bool package2 = false;
  bool package3 = false;
  int _package1 = 0;
  int _package2 = 0;
  int _package3 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Publicmain()));
          },
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(51, 50, 85, 1),
          ),
          Container(
            child: Scrollbar(
              child: ListView(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                          minHeight: 750, maxHeight: double.infinity),
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 35,
                          right: 20,
                          bottom: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(35),
                            topRight: Radius.circular(35),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Package',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              child: Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(100, 208, 223, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            '180 WASH - \$12',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            'Exterior Only',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 30),
                                      child: Icon(
                                        _icon[_package1],
                                        color: Colors.white,
                                        size: 23,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    if (package1 == true) {
                                      _package1 = 0;
                                      _package2 = 0;
                                      _package3 = 0;

                                      package1 = false;
                                      package2 = false;
                                      package3 = false;
                                    } else {
                                      _package1 = 1;
                                      _package2 = 0;
                                      _package3 = 0;

                                      package1 = true;
                                      package2 = false;
                                      package3 = false;
                                    }
                                  },
                                );
                              },
                            ),
                            Visibility(
                              child: TilesPackage1(),
                              visible: package1,
                            ),
                            InkWell(
                              child: Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 176, 56, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            '360 WASH - \$25',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            'Full Service',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 30),
                                      child: Icon(
                                        _icon[_package2],
                                        color: Colors.white,
                                        size: 23,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    if (package2 == true) {
                                      _package1 = 0;
                                      _package2 = 0;
                                      _package3 = 0;

                                      package1 = false;
                                      package2 = false;
                                      package3 = false;
                                    } else {
                                      _package1 = 0;
                                      _package2 = 1;
                                      _package3 = 0;

                                      package1 = false;
                                      package2 = true;
                                      package3 = false;
                                    }
                                  },
                                );
                              },
                            ),
                            Visibility(
                              child: TilesPackage2(),
                              visible: package2,
                            ),
                            InkWell(
                              child: Container(
                                height: 100,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(234, 93, 100, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            '360 WASH - \$25',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(
                                            'Full Service',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontSize: 15,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          right: 20, bottom: 30),
                                      child: Icon(
                                        _icon[_package3],
                                        color: Colors.white,
                                        size: 23,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(
                                  () {
                                    if (package3 == true) {
                                      _package1 = 0;
                                      _package2 = 0;
                                      _package3 = 0;

                                      package1 = false;
                                      package2 = false;
                                      package3 = false;
                                    } else {
                                      _package1 = 0;
                                      _package2 = 0;
                                      _package3 = 1;

                                      package1 = false;
                                      package2 = false;
                                      package3 = true;
                                    }
                                  },
                                );
                              },
                            ),
                            Visibility(
                              child: TilesPackage3(),
                              visible: package3,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
