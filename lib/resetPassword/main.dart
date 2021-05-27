import 'package:Wecarcare/forgotPassword/main.dart';
import 'package:Wecarcare/passwordSuccess/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ResetPasswd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ForgotPasswd()));
            }),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(51, 50, 85, 1),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width / 1,
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
                  padding: EdgeInsets.only(left: 20, top: 50, right: 15),
                  child: Text(
                    'Reset',
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
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'Enter your new password',
                    style: TextStyle(
                        height: 1.5,
                        fontSize: 13,
                        color: Color.fromRGBO(51, 50, 85, 1),
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 55,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'NEW PASSWORD',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 15),
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
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'PASSWORD',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25, right: 15),
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
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Divider(
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(234, 93, 100, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        )),
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PasswdSuccess()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'RESET',
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
                Container(
                  width: 250,
                  height: 350,
                  child: Expanded(
                    flex: 0,
                    child: Image(
                      image: AssetImage(
                        'assets/images/car.png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
