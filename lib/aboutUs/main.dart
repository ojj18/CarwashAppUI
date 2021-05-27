import 'package:Wecarcare/homePage/main.dart';
import 'package:Wecarcare/publicMain/main.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
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
            padding: EdgeInsets.only(top: 25),
            child: ListView(
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(
                      minHeight: 700, maxHeight: double.infinity),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1,
                    padding: EdgeInsets.only(left: 20, top: 30, right: 15),
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
                        Text(
                          'About Us',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Integer pellentesque enim nec sem aliquam porttitor.Duis et nunc at est euismod\nconvallis sit amet vitae risus. In non orci eu risus aliquet volutpat ut non erat.',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.7,
                              color: Color.fromRGBO(81, 81, 104, 1),
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Aenean sem sapien, vestibulum eu elit dignissim, sodales scelerisque lectus Duis\neu tempor metus. Vivamus luctus erat eget pellentesque rutrum.',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.7,
                              color: Color.fromRGBO(81, 81, 104, 1),
                              fontFamily: 'Montserrat'),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Sed blandit, eros sed cursus tempor, nibh\nnisi sodales elit, nec consequat nunc quam\nquis odio.Morbi bibendum mi lobortis luctus placerat. Nulla facilisis metus odio.',
                          style: TextStyle(
                              fontSize: 14,
                              height: 1.7,
                              color: Color.fromRGBO(81, 81, 104, 1),
                              fontFamily: 'Montserrat'),
                        )
                      ],
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
