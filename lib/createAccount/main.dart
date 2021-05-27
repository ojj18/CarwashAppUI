import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/introPage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:Wecarcare/signIn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => IntroPage(),
                ),
              );
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
                  padding:
                      EdgeInsets.only(left: 20, top: 35, right: 15, bottom: 20),
                  child: Text(
                    'Create an Account',
                    style: TextStyle(
                        color: Colors.black,
                        // fontFamily: 'josefinSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'NAME',
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
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Bravo Jack',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      suffixIcon: Icon(
                        FontAwesome.user,
                        color: Colors.grey[350],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Divider(color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'EMAIL ADDRESS',
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
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'someone@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      suffixIcon: Icon(
                        Foundation.mail,
                        color: Colors.grey[350],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Divider(color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Text(
                    'MOBILE NUMBER',
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
                    keyboardType: TextInputType.phone,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '+44 64576892',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      suffixIcon: Icon(
                        AntDesign.mobile1,
                        color: Colors.grey[350],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Divider(color: Colors.grey),
                ),
                SizedBox(
                  height: 25,
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
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '**********',
                      hintStyle: TextStyle(
                        letterSpacing: 2,
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
                  height: 25,
                ),
                Row(
                  children: [
                    Checkbox(
                        value: checkBoxValue,
                        activeColor: Colors.teal[700],
                        onChanged: (bool newValue) {
                          setState(() {
                            checkBoxValue = newValue;
                          });
                        }),
                    Text(
                      'I Agree Terms & Condition',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.grey,
                        fontSize: 14,
                        //fontWeight: FontWeight.w600
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(234, 93, 100, 1),
                      borderRadius: BorderRadius.all(
                        Radius.circular(6),
                      ),
                    ),
                    child: FlatButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Publicmain()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'CREATE ACCOUNT',
                              style: TextStyle(
                                color: Colors.white,
                                //fontFamily: 'josefinSans',
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Icon(
                              AntDesign.arrowright,
                              size: 25,
                              color: Colors.white,
                            )
                          ],
                        )),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already a Member?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
