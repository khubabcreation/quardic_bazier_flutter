import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quardatic_bazier/Second_Screen.dart';
import 'package:quardatic_bazier/quardatic_classes/Container_Desighn.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Desighn_Screen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height - kToolbarHeight;
    double width = MediaQuery.of(context).size.width;
   String? foodData ;
    return Scaffold(
      appBar: AppBar(
        title: Text('This is First Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: height * 0.3,
              width: width,
              color: Colors.red,
              child: Text(foodData.toString()),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                controller: nameController,
                decoration: InputDecoration(hintText: 'Enter your Name'),
              ),
            ),
            ElevatedButton(
                onPressed: ()async {
              var Data =await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        Second_Screen(raw_data: nameController.text.toString()),
                  ));
                  setState(() {
                  foodData = Data ;
                  });
                print('this is the data which we get back $foodData');
                },
                child: Text('Send data To Second Screen')),
          ],
        ),
      ),
    );
  }
}
