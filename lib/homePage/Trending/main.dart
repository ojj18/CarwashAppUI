import 'package:Wecarcare/homePage/Trending/List.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Trending extends StatelessWidget {
  Trending({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/Json/Trending.json'),
          builder: (context, snapshot) {
            var trending_data = json.decode(snapshot.data.toString());
            return ListView.builder(
                padding: EdgeInsets.only(right: 20),
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return TrendingList(
                      trending_data: trending_data, index: index);
                },
                itemCount: trending_data == null ? 0 : trending_data.length);
          }),
    );
  }
}
