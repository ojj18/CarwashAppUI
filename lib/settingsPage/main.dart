import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        elevation: 0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Publicmain()));
            }),
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(51, 50, 85, 1),
          ),
          Scrollbar(
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 20,
                  ),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: 700,
                      maxHeight: double.infinity,
                    ),
                    child: Container(
                      padding: EdgeInsets.only(
                        left: 10,
                        top: 30,
                        right: 15,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                FontAwesome.lock,
                                size: 40,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Settings',
                                    style: TextStyle(
                                      color: Colors.black,
                                      // fontFamily: 'josefinSans',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),
                                  ),
                                  Text(
                                    'Change your password',
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: 65,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Text(
                              'NEW PASSWORD',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '**********',
                                hintStyle: TextStyle(
                                  letterSpacing: 3,
                                  color: Colors.grey[350],
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                                suffixIcon: Icon(
                                  FontAwesome.lock,
                                  color: Colors.grey[350],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 15),
                            child: Text(
                              'CONFIRM NEW PASSWORD',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: '**********',
                                hintStyle: TextStyle(
                                  letterSpacing: 3,
                                  color: Colors.grey[350],
                                  fontFamily: 'Montserrat',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w700,
                                ),
                                suffixIcon: Icon(
                                  FontAwesome.lock,
                                  color: Colors.grey[350],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 10),
                            child: Container(
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(234, 93, 100, 1),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(6),
                                  )),
                              width: MediaQuery.of(context).size.width / 1.1,
                              child: FlatButton(
                                onPressed: () {},
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'SAVE',
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
                        ],
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
