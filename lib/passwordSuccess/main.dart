import 'package:Wecarcare/resetPassword/main.dart';
import 'package:Wecarcare/signIn/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class PasswdSuccess extends StatefulWidget {
  @override
  _PasswdSuccessState createState() => _PasswdSuccessState();
}

class _PasswdSuccessState extends State<PasswdSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(51, 50, 85, 1),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              size: 25,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResetPasswd()));
            }),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Container(
            color: Color.fromRGBO(51, 50, 85, 1),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35), topRight: Radius.circular(35)),
            ),
          ),
          ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 8),
                    child: Image(
                      image: AssetImage('assets/images/success.png'),
                      height: 100,
                      width: 100,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 150,
                    ),
                    child: Text(
                      "Success",
                      style: TextStyle(
                          color: Color.fromRGBO(51, 50, 85, 1),
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      "Congratulations! Your password has been changed successfully.",
                      style: TextStyle(
                        color: Colors.blueGrey[600],
                        fontSize: 14,
                        fontFamily: 'Montserrat',
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 25,
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
                                  builder: (context) => LoginPage()));
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
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        minHeight: 490, maxHeight: double.infinity),
                    child: Container(
                      child: Image(
                        image: AssetImage('assets/images/car.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
