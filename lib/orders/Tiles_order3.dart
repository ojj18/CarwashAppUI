import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Tilesorder3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 30),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.03),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '180 Car Wash',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                Text(
                  '\$12',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              height: 130,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[200]),
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'DATE',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        ':  08-24-2019',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'TIME',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        ':   10.30 AM - 11.30 AM',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        'PAYMENT MODE',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        ':   CREDIT CARD',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 120,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(234, 93, 100, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  )),
              child: FlatButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      AntDesign.download,
                      color: Colors.white,
                      size: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'INVOICE',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 13,
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
}
