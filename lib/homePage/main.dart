import 'package:Wecarcare/homePage/Trending/main.dart';
import 'package:Wecarcare/homePage/drawer.dart';
import 'package:Wecarcare/homePage/memberShip/main.dart';
import 'package:Wecarcare/homePage/packages/main.dart';
import 'package:Wecarcare/homePage/review/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TimeOfDay _time = TimeOfDay.now();
  TimeOfDay picked;

  Future<Null> selectTime(BuildContext context) async {
    picked = await showTimePicker(
      context: context,
      initialTime: _time,
    );
    setState(() {
      _time = picked;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Color.fromRGBO(51, 50, 85, 1)));
    return Scaffold(
      backgroundColor: Colors.grey[350],
      appBar: AppBar(
        title: Text(
          'WECARCARE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Montserrat',
          ),
        ),
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer1(),
      body: Container(
        child: Scrollbar(
          child: ListView(
            padding: EdgeInsets.only(bottom: 50),
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  height: 320,
                  color: Color.fromRGBO(51, 50, 85, 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Trending(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(234, 93, 100, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            ),
                          ),
                          child: FlatButton(
                            onPressed: () {
                              selectTime(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'BOOK NOW',
                                  style: TextStyle(
                                    color: Colors.white,
                                    //fontFamily: 'josefinSans',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Icon(
                                  AntDesign.calendar,
                                  size: 25,
                                  color: Colors.white,
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
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PACKAGES',
                      style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Packages for Car wash & Services',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Package(),
                  ],
                ),
              ),
              Container(
                height: 300,
                color: Colors.grey[300],
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15, right: 15, top: 20),
                          child: Text(
                            'MEMBERSHIP',
                            style: TextStyle(
                              color: Colors.blueGrey[800],
                              fontFamily: 'Montserrat',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Text(
                            'Our Customer\'s Feedback',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: 'Montserrat',
                              fontSize: 12,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                          ),
                          child: Member(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 20),
                    child: Text(
                      'REVIEWS',
                      style: TextStyle(
                        color: Colors.blueGrey[800],
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                      right: 15,
                    ),
                    child: Text(
                      'Our Customer\'s Feedback',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontFamily: 'Montserrat',
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Review(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
