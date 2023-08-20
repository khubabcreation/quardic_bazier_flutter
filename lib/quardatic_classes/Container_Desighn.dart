import 'package:flutter/material.dart';

import 'MyCustomeClass.dart';

class Desighn_Screen extends StatefulWidget {
  const Desighn_Screen({Key? key}) : super(key: key);

  @override
  State<Desighn_Screen> createState() => _Desighn_ScreenState();
}

class _Desighn_ScreenState extends State<Desighn_Screen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Screen'),
      ),
      body: Container(
          height: height,
          width: width,
          child: Column(
            children: [

              ClipPath(
                clipper:MyCustomeClass() ,
                child: Container(
                  height: height/2,
                  width: width ,
                  color: Colors.red,
                ),
              ),
            ],
          )),
    );
  }
}
