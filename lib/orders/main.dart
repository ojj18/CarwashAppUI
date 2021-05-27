import 'package:Wecarcare/account/main.dart';
import 'package:Wecarcare/orders/Tiles_order1.dart';
import 'package:Wecarcare/orders/Tiles_order2.dart';
import 'package:Wecarcare/orders/Tiles_order3.dart';
import 'package:Wecarcare/orders/Tiles_order4.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Orders extends StatefulWidget {
  @override
  _OrdersState createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  bool checkBoxValue = false;
  List<IconData> _icon = [
    FontAwesome.caret_right,
    FontAwesome.caret_down,
  ];
  bool order1 = false;
  bool order2 = false;
  bool order3 = false;
  bool order4 = false;
  int _order1 = 0;
  int _order2 = 0;
  int _order3 = 0;
  int _order4 = 0;
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
                  context, MaterialPageRoute(builder: (context) => Account()));
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
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: 700,
                        maxHeight: double.infinity,
                      ),
                      child: Container(
                        padding: EdgeInsets.only(
                            top: 40, left: 20, right: 20, bottom: 30),
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
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/file-invoice-dollar.png',
                                  height: 50,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Orders',
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
                                      'Check your orders \& invoices',
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          color: Colors.grey[600],
                                          fontSize: 14,
                                          fontWeight: FontWeight.w700),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 50,
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 60,
                                width: MediaQuery.of(context).size.width / 1,
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
                                    Text(
                                      '\#WCC010',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(
                                      _icon[_order1],
                                      color: Colors.grey[700],
                                      size: 23,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (order1 == true) {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = false;
                                    order3 = false;
                                    order4 = false;
                                  } else {
                                    _order1 = 1;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = true;
                                    order2 = false;
                                    order3 = false;
                                    order4 = false;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Visibility(
                              child: Tilesorder1(),
                              visible: order1,
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 60,
                                width: MediaQuery.of(context).size.width / 1,
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
                                    Text(
                                      '\#WCC005',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(
                                      _icon[_order2],
                                      color: Colors.grey[700],
                                      size: 23,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (order2 == true) {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = false;
                                    order3 = false;
                                    order4 = false;
                                  } else {
                                    _order1 = 0;
                                    _order2 = 1;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = true;
                                    order3 = false;
                                    order4 = false;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Visibility(
                              child: Tilesorder2(),
                              visible: order2,
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                height: 60,
                                width: MediaQuery.of(context).size.width / 1,
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
                                    Text(
                                      '\#WCC003',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(
                                      _icon[_order3],
                                      color: Colors.grey[700],
                                      size: 23,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (order3 == true) {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = false;
                                    order3 = false;
                                    order4 = false;
                                  } else {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 1;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = false;
                                    order3 = true;
                                    order4 = false;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Visibility(
                              child: Tilesorder3(),
                              visible: order3,
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            InkWell(
                              child: Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                ),
                                height: 60,
                                width: MediaQuery.of(context).size.width / 1,
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
                                    Text(
                                      '\#WCC005',
                                      style: TextStyle(
                                        color: Colors.grey[700],
                                        fontFamily: 'Montserrat',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    Icon(
                                      _icon[_order4],
                                      color: Colors.grey[700],
                                      size: 23,
                                    ),
                                  ],
                                ),
                              ),
                              onTap: () {
                                setState(() {
                                  if (order4 == true) {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 0;

                                    order1 = false;
                                    order2 = false;
                                    order3 = false;
                                    order4 = false;
                                  } else {
                                    _order1 = 0;
                                    _order2 = 0;
                                    _order3 = 0;
                                    _order4 = 1;

                                    order1 = false;
                                    order2 = false;
                                    order3 = false;
                                    order4 = true;
                                  }
                                });
                              },
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Visibility(
                              child: Tilesorder4(),
                              visible: order4,
                            )
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
