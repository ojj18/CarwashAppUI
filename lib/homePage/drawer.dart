import 'package:Wecarcare/Booking/main.dart';
import 'package:Wecarcare/aboutUs/main.dart';
import 'package:Wecarcare/forgotPassword/main.dart';
import 'package:Wecarcare/introPage/main.dart';
import 'package:Wecarcare/memberShip/main.dart';
import 'package:Wecarcare/orders/main.dart';
import 'package:Wecarcare/package/main.dart';
import 'package:Wecarcare/profilePage/main.dart';
import 'package:Wecarcare/ratingPage/main.dart';
import 'package:Wecarcare/settingsPage/main.dart';
import 'package:Wecarcare/signIn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Drawer1 extends StatefulWidget {
  @override
  _Drawer1State createState() => _Drawer1State();
}

class _Drawer1State extends State<Drawer1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(51, 50, 85, 1),
      height: double.infinity,
      width: 257,
      child: Column(
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 200,
            ),
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 10),
              width: 257,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                    ),
                    radius: 40,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Salma Hayeke',
                    style: TextStyle(
                      color: Color.fromRGBO(234, 93, 100, 1),
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'New York',
                    style: TextStyle(
                      color: Colors.grey,
                      fontFamily: 'Montserrat',
                      fontSize: 12,
                    ),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 4,
            child: Container(
              padding: EdgeInsets.only(left: 20, bottom: 25),
              color: Color.fromRGBO(51, 50, 85, 1),
              child: Scrollbar(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(
                        FontAwesome.home,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Home',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {},
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        MaterialCommunityIcons.package_variant_closed,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Packages',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Packages()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        MaterialIcons.card_membership,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Membership',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Membership()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        MaterialCommunityIcons.file_document_box_outline,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'SignUp',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroPage()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Entypo.login,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'SignIn',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginPage()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        FontAwesome.lock,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Forgot Password',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswd()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Entypo.calendar,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Booking',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Booking()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        FontAwesome.user_circle_o,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProfilePage()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        FontAwesome.gears,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Settings()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Ionicons.md_timer,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Order Histroy',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Orders()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        FontAwesome.at,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'About us',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => AboutUs()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        MaterialIcons.rate_review,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Rate this App',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RatingPage()));
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(
                        Entypo.log_out,
                        size: 23,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Logout',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontFamily: 'Montserrat'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => IntroPage()));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
