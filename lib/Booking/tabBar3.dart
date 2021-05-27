import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class TabBar3 extends StatefulWidget {
  @override
  _TabBar3State createState() => _TabBar3State();
}

class _TabBar3State extends State<TabBar3> {
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
    return Container(
      child: Scrollbar(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                "Select Your Date",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 14,
                    color: Color.fromRGBO(51, 50, 85, 1),
                    fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Date",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 10,
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
                border: InputBorder.none,
                hintText: '13-01-2019',
                hintStyle: TextStyle(
                  color: Colors.grey[300],
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
                suffixIcon: IconButton(
                    icon: Icon(MaterialCommunityIcons.calendar_clock,
                        color: Colors.grey[300]),
                    onPressed: () {
                      selectTime(context);
                    }),
              ),
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Select Your Timing",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 14,
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '10:12\nam',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '09:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      border: Border.all(
                          color: Color.fromRGBO(51, 50, 85, 1), width: 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '10:12\nam',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '06:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '07:12\nam',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '03:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '05:12\nam',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '05:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '08:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '06:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '07:12\npm',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: FlatButton(
                      onPressed: () {},
                      child: Center(
                          child: Text(
                        '08:12\nam',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      )),
                    ),
                  ),
                ],
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
    );
  }
}
