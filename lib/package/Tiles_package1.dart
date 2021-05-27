import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TilesPackage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 0,
      child: Container(
        padding: EdgeInsets.only(left: 20, top: 40, bottom: 40),
        //height: MediaQuery.of(context).size.height / 1.5,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.03),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Complete soft cloth wash',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Wheel Brite',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Hand Applied True Shrine',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Triple Foam Conditioner',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Undercarriage',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Rust inhibitor',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Feather.check_circle, color: Colors.blueGrey[700]),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Sealer Wax',
                  style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontFamily: 'Montserrat',
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
