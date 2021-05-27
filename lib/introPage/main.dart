import 'package:Wecarcare/createAccount/main.dart';
import 'package:Wecarcare/signIn/main.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color.fromRGBO(51, 50, 85, 1),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Container(
            width: MediaQuery.of(context).size.width / 1,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Scrollbar(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsetsDirectional.only(bottom: 80),
                    height: 250,
                    width: 250,
                    child: Image(
                      image: AssetImage('assets/images/logo.png'),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(234, 93, 100, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(6),
                            )),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: ' josefinSans',
                                fontSize: 16,
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                      Container(
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        )),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          color: Color.fromRGBO(80, 175, 228, 1),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUp()));
                          },
                          child: Text(
                            'CREATE ACCOUNT',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontFamily: 'josefinSans',
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 250,
                    height: 450,
                    child: Expanded(
                      flex: 1,
                      child: Image(
                          image: AssetImage('assets/images/car.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
