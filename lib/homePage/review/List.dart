import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class ReviewList extends StatelessWidget {
  ReviewList({Key key, this.review_data, this.index}) : super(key: key);
  var review_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 18,
      ),
      child: Card(
        elevation: 20,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Container(
          padding: EdgeInsets.only(left: 20, top: 20),
          height: 180,
          width: 290,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('' + review_data[index]['Image']),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '' + review_data[index]["Name"],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(
                            FontAwesome.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            FontAwesome.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            FontAwesome.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            FontAwesome.star,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            FontAwesome.star_half_full,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '' + review_data[index]["Review"],
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 11,
                  height: 1.5,
                  fontFamily: 'Montserrat',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
