import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';

class Membership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
            icon: Icon(Icons.arrow_back, size: 25),
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
          Scrollbar(
            child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Container(
                      height: 1150,
                      padding: EdgeInsets.only(top: 30, left: 20, right: 20),
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
                            'Membership',
                            style: TextStyle(
                              color: Colors.black,
                              // fontFamily: 'josefinSans',
                              fontWeight: FontWeight.w700,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          //Exterior only part//
                          Container(
                            height: 300,
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(100, 208, 223, 1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
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
                                              'Exterior Only',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              '180 WASH',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'Single Wash',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text(
                                              '12',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 145,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '29.99',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    41, 41, 68, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Text(
                                              '\/ mo',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'UNLIMITED MEMBERSHIP',
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Full service part//
                          Container(
                            height: 300,
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(255, 176, 56, 1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
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
                                              'Full service',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              '360 WASH',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'Single Wash',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text(
                                              '24',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 145,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '49.99',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    41, 41, 68, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Text(
                                              '\/ mo',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'UNLIMITED MEMBERSHIP',
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          // Full service part//
                          Container(
                            height: 300,
                            child: Column(
                              children: [
                                Container(
                                  height: 150,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(234, 93, 100, 1),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10)),
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
                                              'Full service',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'ELITE WASH',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 23,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Text(
                                              'Single Wash',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 10),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(right: 20),
                                            child: Text(
                                              '36',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 145,
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(0, 0, 0, 0.03),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                bottom: 5),
                                            child: Text(
                                              '\$',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            '69.99',
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    41, 41, 68, 1),
                                                fontFamily: 'Montserrat',
                                                fontSize: 35,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 12),
                                            child: Text(
                                              '\/ mo',
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      41, 41, 68, 1),
                                                  fontFamily: 'Montserrat',
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Text(
                                        'UNLIMITED MEMBERSHIP',
                                        style: TextStyle(
                                          color: Colors.grey[400],
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
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
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}
