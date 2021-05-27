import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TabBar4 extends StatefulWidget {
  @override
  _TabBar4State createState() => _TabBar4State();
}

class _TabBar4State extends State<TabBar4> with TickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scrollbar(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                "Select Your Wash Package",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    color: Color.fromRGBO(51, 50, 85, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: new TabBar(
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromRGBO(51, 50, 85, 1),
                  ),
                  controller: _controller,
                  tabs: [
                    Container(
                      height: 70,
                      width: 120,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/images/visa.png',
                                  height: 50,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/images/stripe-pay-card-logo.png',
                                  height: 50,
                                ))
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 70,
                      width: 120,
                      child: Tab(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Image.asset(
                                  'assets/images/paypal.png',
                                  height: 50,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 500,
              child: new TabBarView(
                controller: _controller,
                children: <Widget>[
                  Tab1(),
                  Tab2(),
                  Tab3(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Tab1 extends StatefulWidget {
  @override
  _Tab1State createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80, right: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME ON CARD',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey[600],
                fontSize: 12,
                //fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                style: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Carlos Cortes',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              'CARD NUMBER',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey[600],
                fontSize: 12,
                //fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: '0000 3434 7867 9523',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 14),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EXPIRY DATE',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey[600],
                          fontSize: 12,
                          //fontWeight: FontWeight.w600
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                            hintText: '17 / 22',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey[600],
                          fontSize: 12,
                          //fontWeight: FontWeight.w600
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                            hintText: '987',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: Color.fromRGBO(234, 93, 100, 1),
                  onPressed: () {
                    showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionBuilder: (context, a1, a2, widget) {
                          return Dialog(context);
                        },
                        transitionDuration: Duration(milliseconds: 200),
                        // DURATION FOR ANIMATION
                        barrierDismissible: true,
                        barrierLabel: 'LABEL',
                        context: context,
                        pageBuilder: (context, animation1, animation2) {
                          return Text('PAGE BUILDER');
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PAY NOW \$ 24',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        AntDesign.arrowright,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget Dialog(BuildContext context) {
  return Material(
      type: MaterialType.transparency,
      child: Center(
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: new BorderRadius.circular(5.0)),
              margin: EdgeInsets.all(20),
              height: 280,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 300),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context, false);
                          },
                          child: Icon(
                            Icons.close,
                            color: Colors.blueGrey[400],
                            size: 40,
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: Scrollbar(
                          child: ListView(
                            children: [
                              Container(
                                height: 100,
                                width: 100,
                                child: Image.asset(
                                  'assets/images/success-green@2x.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Confirmed",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blueGrey[800],
                                    fontSize: 30,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Thank you.Your payment has been successful.',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.blueGrey[600],
                                    fontFamily: 'Montserrat',
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 20, bottom: 30, left: 20, right: 20),
                                child: Container(
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(25),
                                    ),
                                  ),
                                  child: FlatButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(6)),
                                    color: Color.fromRGBO(234, 93, 100, 1),
                                    onPressed: () {
                                      Navigator.pop(context, true);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'PAY NOW \$ 24',
                                          style: TextStyle(
                                              fontFamily: "Montserrat",
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Icon(
                                          AntDesign.arrowright,
                                          color: Colors.white,
                                          size: 14,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]))));
}

class Tab2 extends StatefulWidget {
  @override
  _Tab2State createState() => _Tab2State();
}

class _Tab2State extends State<Tab2> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: EdgeInsets.only(top: 80, right: 15),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'NAME ON CARD',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey[600],
                fontSize: 12,
                //fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                style: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: 'Carlos Cortes',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 14),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Text(
              'CARD NUMBER',
              style: TextStyle(
                fontFamily: 'Montserrat',
                color: Colors.grey[600],
                fontSize: 12,
                //fontWeight: FontWeight.w600
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TextFormField(
                keyboardType: TextInputType.number,
                style: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                decoration: InputDecoration(
                  hintText: '0000 3434 7867 9523',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.black,
                      fontSize: 14),
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'EXPIRY DATE',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey[600],
                          fontSize: 12,
                          //fontWeight: FontWeight.w600
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                            hintText: '17 / 22',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                Divider(),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CVV',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey[600],
                          fontSize: 12,
                          //fontWeight: FontWeight.w600
                        ),
                      ),
                      TextFormField(
                        keyboardType: TextInputType.number,
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                        decoration: InputDecoration(
                            hintText: '987',
                            hintStyle: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 14),
                            border: InputBorder.none),
                      ),
                    ],
                  ),
                ),
                Divider(),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25),
                  ),
                ),
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6)),
                  color: Color.fromRGBO(234, 93, 100, 1),
                  onPressed: () {
                    showGeneralDialog(
                        barrierColor: Colors.black.withOpacity(0.5),
                        transitionBuilder: (context, a1, a2, widget) {
                          return Dialog(context);
                        },
                        transitionDuration: Duration(milliseconds: 200),
                        // DURATION FOR ANIMATION
                        barrierDismissible: true,
                        barrierLabel: 'LABEL',
                        context: context,
                        pageBuilder: (context, animation1, animation2) {
                          return Text('PAGE BUILDER');
                        });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'PAY NOW \$ 24',
                        style: TextStyle(
                            fontFamily: "Montserrat",
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      Icon(
                        AntDesign.arrowright,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: 100,
            padding: EdgeInsets.only(
              top: 50,
            ),
            child: Image(
              image: NetworkImage(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCa_cqKVT4NMDmbRNZ2QI-wPvAdBd0sxUW9rcKcJ5kosPRvYEW&s',
              ),
            )),
      ],
    );
  }
}
