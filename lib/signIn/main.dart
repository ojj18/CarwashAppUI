import 'package:Wecarcare/createAccount/main.dart';
import 'package:Wecarcare/forgotPassword/main.dart';
import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/introPage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => IntroPage()));
          },
          icon: Icon(
            Icons.arrow_back,
            size: 25,
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(51, 50, 85, 1),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
            ),
          ),
          Scrollbar(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 40, right: 15),
                  child: Text(
                    'Login',
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
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'someone@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey[350],
                        fontFamily: 'Montserrat',
                        fontSize: 16,
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
                    style: TextStyle(
                      letterSpacing: 3,
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                    ),
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
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPasswd()));
                        },
                        child: Text(
                          'Forget your Password?',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
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
                                builder: (context) => Publicmain()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'LOGIN',
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
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'New Customer?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Create Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image(
                    image: AssetImage('assets/images/car.png'),
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
