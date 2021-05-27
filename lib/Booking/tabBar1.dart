import 'package:Wecarcare/Booking/tabBar2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TabBar1 extends StatelessWidget {
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
                "What Kind of car do you drive?",
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
              "VEHICLE TYPE",
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Dropdown(),
            SizedBox(
              height: 30,
            ),
            Text(
              'CAR MAKE',
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
              style: TextStyle(
                color: Color.fromRGBO(51, 50, 85, 1),
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Ford',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text(
              'COLOR',
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
              style: TextStyle(
                color: Color.fromRGBO(51, 50, 85, 1),
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Black',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text(
              'LICENSE PLATE',
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
              style: TextStyle(
                color: Color.fromRGBO(51, 50, 85, 1),
                fontFamily: 'Montserrat',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(51, 50, 85, 1),
                  fontFamily: 'Montserrat',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Divider(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Can\'t remember? Leave it blank. You can update later',
              style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                bottom: 50,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
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

class Dropdown extends StatefulWidget {
  @override
  _DropdownState createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int selected = null;
  List<DropdownMenuItem<int>> listDrop = [];

  void loadData() {
    listDrop = [];
    listDrop.add(DropdownMenuItem(
      child: Container(
        child: Text(
          'Hatchback',
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          "Coupe",
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          "Crossover",
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      value: 3,
    ));
    listDrop.add(new DropdownMenuItem(
      child: Container(
        child: Text(
          "Convertible",
          style: TextStyle(
            fontFamily: 'Montserrat',
          ),
        ),
      ),
      value: 4,
    ));
  }

  @override
  Widget build(BuildContext context) {
    loadData();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: DropdownButtonHideUnderline(
        child: Container(
          width: MediaQuery.of(context).size.width / 1.2,
          child: DropdownButton(
            iconSize: 25,
            elevation: 1,
            value: selected,
            hint: Text(
              "Hatchback",
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'josefinSans',
              ),
              overflow: TextOverflow.ellipsis,
            ),
            items: listDrop,
            onChanged: (value) {
              selected = value;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
