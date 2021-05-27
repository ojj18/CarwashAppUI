import 'package:Wecarcare/homePage/packages/List.dart';
import 'package:Wecarcare/package/main.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

class Package extends StatelessWidget {
  Package({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: FutureBuilder(
          future: DefaultAssetBundle.of(context)
              .loadString('assets/Json/Package.json'),
          builder: (context, snapshot) {
            var package_data = json.decode(snapshot.data.toString());
            return Scrollbar(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    child: PackageList(
                      package_data: package_data,
                      index: index,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Packages()));
                    },
                  );
                },
                itemCount: package_data == null ? 0 : package_data.length,
              ),
            );
          }),
    );
  }
}
