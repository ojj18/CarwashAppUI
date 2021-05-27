import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class TrendingList extends StatelessWidget {
  TrendingList({Key key, this.trending_data, this.index}) : super(key: key);
  var trending_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 10,
        ),
        child: InkWell(
          child: Card(
            elevation: 20,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                Radius.circular(10),
              )),
              width: 340,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        image: DecorationImage(
                          colorFilter: new ColorFilter.mode(
                              Colors.white.withOpacity(0.85),
                              BlendMode.dstATop),
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            '' + trending_data[index]['image'],
                          ),
                        )),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15, bottom: 20, right: 15),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '' + trending_data[index]['Text'],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                '' + trending_data[index]['descText'],
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 13,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            AntDesign.arrowright,
                            color: Colors.white,
                            size: 25,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          onTap: () {},
        ));
  }
}
