import 'package:Wecarcare/orders/main.dart';
import 'package:Wecarcare/profilePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:Wecarcare/settingsPage/main.dart';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Account extends StatelessWidget {
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
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
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
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                      width: MediaQuery.of(context).size.width / 1,
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
                            'Hi Salma!',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Welcome to WECARCARE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Montserrat',
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            height: 140,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(100, 208, 223, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'SPENT',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'AMOUNT',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\$',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                          fontFamily: 'Montserrat'),
                                    ),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    Text(
                                      '120',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 40,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            height: 140,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 176, 56, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'NO. OF',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'WASH',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Text(
                                  '28',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            height: 140,
                            width: MediaQuery.of(context).size.width / 1.1,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(234, 93, 100, 1),
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'NO. OF',
                                      style: TextStyle(
                                        color: Colors.white54,
                                        fontSize: 14,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'SERVICE',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.white,
                                          fontSize: 23,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                                Text(
                                  '07',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 1.1,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.03),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'ORDERS',
                                        style: TextStyle(
                                            color: Colors.blueGrey[800],
                                            fontSize: 23,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'MANAGE YOUR ORDERS',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      )
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image.asset(
                                      'assets/images/file-invoice-dollar.png',
                                      color: Colors.black,
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Orders()));
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          InkWell(
                            child: Container(
                              padding: EdgeInsets.only(
                                left: 20,
                                right: 20,
                              ),
                              height: 140,
                              width: MediaQuery.of(context).size.width / 1.1,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(0, 0, 0, 0.03),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'PROFILE',
                                        style: TextStyle(
                                            color: Colors.blueGrey[800],
                                            fontSize: 23,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w700),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        'MANAGE YOUR PROFILE INFOS ',
                                        style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.grey,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Icon(
                                      FontAwesome.user,
                                      size: 50,
                                      color: Colors.black,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            onTap: () {
                              Navigator.pop(context, true);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfilePage()));
                            },
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 100),
                            child: InkWell(
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                height: 140,
                                width: MediaQuery.of(context).size.width / 1.1,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 0.03),
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
                                        Text(
                                          'SETTINGS',
                                          style: TextStyle(
                                              color: Colors.blueGrey[800],
                                              fontSize: 23,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Text(
                                          'MANAGE YOUR SETTINGS',
                                          style: TextStyle(
                                            fontFamily: 'Montserrat',
                                            color: Colors.grey,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Icon(
                                        FontAwesome.gears,
                                        size: 50,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              onTap: () {
                                Navigator.pop(context, false);
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Settings()));
                              },
                            ),
                          ),
                        ],
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
