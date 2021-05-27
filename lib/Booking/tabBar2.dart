import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TabBar2 extends StatefulWidget {
  @override
  _TabBar2State createState() => _TabBar2State();
}

class _TabBar2State extends State<TabBar2> {
  var selectedCard;
  @override
  Widget build(BuildContext context) {
    String cardTitle;

    return DefaultTabController(
      length: 1,
      child: Container(
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
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Exterior Only',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '180 WASH',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Single Wash',
                              style: TextStyle(
                                color: Colors.grey[600],
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              '12',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
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
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: cardTitle == selectedCard
                        ? Color.fromRGBO(51, 50, 85, 1)
                        : Colors.grey.withOpacity(0.3),
                    width: 3,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Full Service',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '360 WASH',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Single Wash',
                              style: TextStyle(
                                color: Colors.grey[600],
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              '24',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
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
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: FlatButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Full Service',
                              style: TextStyle(
                                color: Colors.grey[600],
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'ELITE WASH',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 23,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              'Single Wash',
                              style: TextStyle(
                                color: Colors.grey[600],
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
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
                                  fontFamily: 'Montserrat',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Text(
                              '48',
                              style: TextStyle(
                                  color: Color.fromRGBO(51, 50, 85, 1),
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
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 50,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 93, 100, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          )),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              AntDesign.arrowleft,
                              size: 22,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              'PREVIOUS',
                              style: TextStyle(
                                  color: Colors.white,
                                  //  fontFamily: 'josefinSans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(234, 93, 100, 1),
                          borderRadius: BorderRadius.all(
                            Radius.circular(6),
                          )),
                      child: FlatButton(
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'NEXT',
                              style: TextStyle(
                                  color: Colors.white,
                                  //  fontFamily: 'josefinSans',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Icon(
                              AntDesign.arrowright,
                              size: 22,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
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
