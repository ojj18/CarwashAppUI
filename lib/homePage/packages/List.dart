import 'package:flutter/material.dart';

class PackageList extends StatelessWidget {
  PackageList({Key key, this.package_data, this.index}) : super(key: key);
  var package_data;
  int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        elevation: 20,
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '' + package_data[index]["Text"],
                      style: TextStyle(
                          color: Colors.blueGrey[600],
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '' + package_data[index]["InfoText"],
                      style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontFamily: 'Montserrat',
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      '' + package_data[index]["Service"],
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Montserrat',
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Text(
                      '\$',
                      style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontFamily: 'josefinSans',
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      '' + package_data[index]["price"],
                      style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontFamily: 'Montserrat',
                          fontSize: 35,
                          fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
