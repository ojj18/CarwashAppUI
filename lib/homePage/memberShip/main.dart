import 'package:Wecarcare/homePage/memberShip/List.dart';
import 'package:Wecarcare/memberShip/main.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Member extends StatelessWidget {
  Member({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/Json/Member.json'),
          builder: (context, snapshot) {
            var member_data = json.decode(snapshot.data.toString());
            return Scrollbar(
              child: ListView.builder(
                padding: EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: MemberList(
                      member_data: member_data,
                      index: index,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Membership()));
                    },
                  );
                },
                itemCount: member_data == null ? 0 : member_data.length,
              ),
            );
          }),
    );
  }
}
