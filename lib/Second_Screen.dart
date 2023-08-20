import 'package:flutter/material.dart';

class Second_Screen extends StatefulWidget {
   Second_Screen({required this.raw_data,Key? key}) : super(key: key);
    String raw_data ;
  @override
  State<Second_Screen> createState() => _Second_ScreenState();
}

class _Second_ScreenState extends State<Second_Screen> {
  final dataController = TextEditingController();
  String? foodData ;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 0.3,
              width: width,
              color: Colors.yellow,
              child: Center(child: Text(widget.raw_data.toString())),
            ),
            TextFormField(
              controller: dataController,
              decoration: InputDecoration(
                  label: Icon(Icons.person),
                  hintText: 'Enter your Data'),
            ),
            ElevatedButton(onPressed: (){
              foodData = dataController.text.toString();
              Navigator.pop(context,foodData);

            }, child: Text('Go Back with data'))
          ],
        ),
      ),
    );
  }
}
