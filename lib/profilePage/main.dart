import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ProfilePage extends StatelessWidget {
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
          Scrollbar(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Container(
                    height: 845,
                    padding: EdgeInsets.only(left: 10, top: 40, right: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(35),
                        topRight: Radius.circular(35),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesome.user,
                              size: 45,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Profile',
                                  style: TextStyle(
                                    color: Colors.black,
                                    // fontFamily: 'josefinSans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Manage your profile information\'s',
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w600,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 80, top: 60),
                          child: Stack(
                            children: [
                              Container(
                                height: 190,
                                width: 190,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey[600],
                                      offset: Offset(0.0, 2.0), //(x,y)
                                      blurRadius: 10.0,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: CircleAvatar(
                                  radius: 90,
                                  backgroundImage: NetworkImage(
                                      'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 150, left: 140),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey[600],
                                        offset: Offset(0.0, 2.0), //(x,y)
                                        blurRadius: 10.0,
                                      ),
                                    ],
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.white,
                                    onTap: () {},
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                        MaterialCommunityIcons.pencil,
                                        color: Colors.black,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, right: 15),
                          child: Text(
                            'NAME',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Salma Hayeke',
                              hintStyle: TextStyle(
                                color: Colors.black,
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
                            'PASSWORD',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'salma.hayeke125@gmail.com',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              suffixIcon: Icon(
                                Entypo.mail,
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
                            'MOBILE NUMBER',
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontSize: 12,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
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
                              hintText: '+91 954354248',
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Montserrat',
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                              ),
                              suffixIcon: Icon(
                                Entypo.mobile,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
