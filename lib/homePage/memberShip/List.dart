import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MemberList extends StatelessWidget {
  MemberList({Key key, this.member_data, this.index}) : super(key: key);
  var member_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.only(left: 17),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20),
          height: 180,
          width: 290,
          decoration: BoxDecoration(
            color: HexColor('' + member_data[index]["color"]),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '' + member_data[index]["Service"],
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    '' + member_data[index]["Type"],
                    style: TextStyle(
                      color: Colors.grey[300],
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '' + member_data[index]["Wash"],
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '\$',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '' + member_data[index]["Price"],
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 35,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '\/ mo',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '' + member_data[index]["MemberShip"],
                style: TextStyle(
                  color: Colors.grey[300],
                  fontFamily: 'Montserrat',
                  fontSize: 14.5,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
