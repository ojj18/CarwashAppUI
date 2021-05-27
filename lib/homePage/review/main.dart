import 'package:Wecarcare/homePage/review/List.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Review extends StatelessWidget {
  Review({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/Json/Review.json'),
          builder: (context, snapshot) {
            var review_data = json.decode(snapshot.data.toString());
            return ListView.builder(
              padding: EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return ReviewList(
                  review_data: review_data,
                  index: index,
                );
              },
              itemCount: review_data == null ? 0 : review_data.length,
            );
          }),
    );
  }
}
