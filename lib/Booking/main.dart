import 'package:Wecarcare/Booking/tabBar1.dart';
import 'package:Wecarcare/Booking/tabBar2.dart';
import 'package:Wecarcare/Booking/tabBar3.dart';
import 'package:Wecarcare/Booking/tabBar4.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';

class Booking extends StatefulWidget {
  @override
  _BookingState createState() => _BookingState();
}

class _BookingState extends State<Booking> with TickerProviderStateMixin {
  TabController _controller;
  var selectedCard;
  String cardTitle;

  void initState() {
    super.initState();
    _controller = new TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {
              Navigator.pop(context, false);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
      ),
      body: Container(
        color: Color.fromRGBO(51, 50, 85, 1),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
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
                    Padding(
                      padding: EdgeInsets.only(top: 30, left: 20),
                      child: Text('Booking',
                          style: TextStyle(
                            color: Colors.blueGrey[800],
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        "Make a booking for car wash or service",
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 30, left: 20),
                        child: Container(
                          child: TabBar(
                              isScrollable: true,
                              unselectedLabelColor:
                                  Color.fromRGBO(51, 50, 85, 1),
                              indicatorSize: TabBarIndicatorSize.label,
                              indicator: BoxDecoration(
                                color: cardTitle == selectedCard
                                    ? Color.fromRGBO(51, 50, 85, 1)
                                    : Colors.grey[300],
                                borderRadius: BorderRadius.circular(10),
                              ),
                              controller: _controller,
                              tabs: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 60,
                                  width: 130,
                                  child: Tab(
                                    child: Text(
                                      'VEHICLE',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 60,
                                  width: 130,
                                  child: Tab(
                                    child: Text(
                                      'PACKAGE',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 60,
                                  width: 130,
                                  child: Tab(
                                    child: Text(
                                      'APPOINTMENT',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 60,
                                  width: 130,
                                  child: Tab(
                                    child: Text(
                                      'PAYMENT',
                                      style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        )),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.only(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: new TabBarView(
                          controller: _controller,
                          children: <Widget>[
                            TabBar1(),
                            TabBar2(),
                            TabBar3(),
                            TabBar4(),
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
      ),
    );
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
