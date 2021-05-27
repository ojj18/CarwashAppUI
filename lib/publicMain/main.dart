import 'package:Wecarcare/Booking/main.dart';
import 'package:Wecarcare/aboutUs/main.dart';
import 'package:Wecarcare/account/main.dart';
import 'package:Wecarcare/forgotPassword/main.dart';
import 'package:Wecarcare/homePage/drawer.dart';
import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/introPage/main.dart';
import 'package:Wecarcare/memberShip/main.dart';
import 'package:Wecarcare/orders/main.dart';
import 'package:Wecarcare/package/main.dart';
import 'package:Wecarcare/profilePage/main.dart';
import 'package:Wecarcare/ratingPage/main.dart';
import 'package:Wecarcare/settingsPage/main.dart';
import 'package:Wecarcare/signIn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class Publicmain extends StatefulWidget {
  Publicmain({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _PublicmainState createState() => _PublicmainState();
}

class _PublicmainState extends State<Publicmain> {
  int _currentIndex = 0;
  List<Widget> _children = <Widget>[
    HomePage(),
    Packages(),
    Membership(),
    Account(),
  ];
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          showSelectedLabels: false,
          onTap: _onTabTapped,
          unselectedItemColor: Colors.grey[400],
          selectedItemColor: Color.fromRGBO(51, 50, 85, 1),
          items: [
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 20, top: 10),
                  child: Icon(
                    AntDesign.home,
                  ),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.only(right: 40, top: 10),
                  child: Icon(
                    Feather.package,
                  ),
                ),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(left: 45, right: 20, top: 10),
                    child: Icon(MaterialCommunityIcons.file_document_outline)),
                title: Text('')),
            BottomNavigationBarItem(
                icon: Padding(
                    padding: EdgeInsets.only(right: 20, top: 10),
                    child: Icon(Feather.user)),
                title: Text('')),
          ]),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: Container(
          height: 90,
          width: 90,
          child: FloatingActionButton(
            backgroundColor: Color.fromRGBO(51, 50, 85, 1),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Booking()));
            },
            child: Container(
              child: Text(
                'BOOK\n\tNOW',
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: Drawer1(),
      //Container(
      //   color: Color.fromRGBO(51, 50, 85, 1),
      //   height: double.infinity,
      //   width: 257,
      //   child: Column(
      //     children: [
      //       Expanded(
      //         flex: 2,
      //         child: Container(
      //           padding: EdgeInsets.only(left: 20, top: 20),
      //           width: 257,
      //           child: Column(
      //             mainAxisAlignment: MainAxisAlignment.center,
      //             crossAxisAlignment: CrossAxisAlignment.start,
      //             children: [
      //               CircleAvatar(
      //                 backgroundImage: NetworkImage(
      //                   'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      //                 ),
      //                 radius: 40,
      //               ),
      //               SizedBox(
      //                 height: 15,
      //               ),
      //               Text(
      //                 'Salma Hayeke',
      //                 style: TextStyle(
      //                   color: Color.fromRGBO(234, 93, 100, 1),
      //                   fontFamily: 'Montserrat',
      //                 ),
      //               ),
      //               SizedBox(
      //                 height: 5,
      //               ),
      //               Text(
      //                 'New York',
      //                 style: TextStyle(
      //                   color: Colors.grey,
      //                   fontFamily: 'Montserrat',
      //                   fontSize: 12,
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         flex: 3,
      //         child: Container(
      //           padding: EdgeInsets.only(left: 20, bottom: 25),
      //           height: MediaQuery.of(context).size.height / 1,
      //           color: Color.fromRGBO(51, 50, 85, 1),
      //           child: Scrollbar(
      //             child: ListView(
      //               children: [
      //                 ListTile(
      //                   leading: Icon(
      //                     FontAwesome.home,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Home',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {},
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     MaterialCommunityIcons.package_variant_closed,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Packages',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Packages()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     MaterialIcons.card_membership,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Membership',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Membership()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     MaterialCommunityIcons.file_document_box_outline,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'SignUp',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => IntroPage()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     Entypo.login,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'SignIn',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => LoginPage()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     FontAwesome.lock,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Forgot Password',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => ForgotPasswd()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     Entypo.calendar,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Booking',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {},
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     FontAwesome.user_circle_o,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Profile',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => ProfilePage()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     FontAwesome.gears,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Settings',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Settings()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     Ionicons.md_timer,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Order Histroy',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => Orders()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     FontAwesome.at,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'About us',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => AboutUs()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     MaterialIcons.rate_review,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Rate this App',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => RatingPage()));
      //                   },
      //                 ),
      //                 SizedBox(
      //                   height: 10,
      //                 ),
      //                 ListTile(
      //                   leading: Icon(
      //                     Entypo.log_out,
      //                     size: 23,
      //                     color: Colors.white,
      //                   ),
      //                   title: Text(
      //                     'Logout',
      //                     style: TextStyle(
      //                         fontSize: 12,
      //                         color: Colors.white,
      //                         fontFamily: 'Montserrat'),
      //                   ),
      //                   onTap: () {
      //                     Navigator.push(
      //                         context,
      //                         MaterialPageRoute(
      //                             builder: (context) => IntroPage()));
      //                   },
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
