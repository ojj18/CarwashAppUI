import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class RatingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
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
          Padding(
            padding: EdgeInsets.only(
              top: 10,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
            ),
          ),
          Scrollbar(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
                  child: Text(
                    'Rate this App',
                    style: TextStyle(
                      color: Colors.black,
                      // fontFamily: 'josefinSans',
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    'Please support us by leaving a review on the app store',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        height: 1.5,
                        color: Color.fromRGBO(81, 81, 104, 1),
                        fontFamily: 'Montserrat'),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(234, 93, 100, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        )),
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: FlatButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RATE APP NOW',
                            style: TextStyle(
                                color: Colors.white,
                                //  fontFamily: 'josefinSans',
                                fontSize: 15,
                                fontWeight: FontWeight.w700),
                          ),
                          Icon(
                            AntDesign.arrowright,
                            size: 25,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60,
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: 490, maxHeight: double.infinity),
                  child: Container(
                    width: 250,
                    height: 350,
                    child: Expanded(
                      flex: 1,
                      child: Image(
                        image: AssetImage('assets/images/car.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
