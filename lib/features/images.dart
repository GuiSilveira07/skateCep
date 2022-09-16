import 'package:flutter/material.dart';
import 'package:skateboarding/features/ListWidget.dart';
import 'package:skateboarding/features/https.dart';

class Images extends StatefulWidget {
  @override
  _MyImagesState createState() => _MyImagesState();
}

class _MyImagesState extends State<Images> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.green,
          shape: const CircularNotchedRectangle(),
          notchMargin: 6,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                RaisedButton(
                  elevation: 0,
                  textColor: Colors.green,
                  color: Colors.green,
                  onPressed: () {
                    debugPrint("pressionando");
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => MyHttps()));
                  },
                  child: Text(
                    "SAIBA MAIS",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.black12,
          actions: [
            Container(
              alignment: Alignment.centerLeft,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/image/Profile 1.png',
                      width: 32,
                      height: 32,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                    iconSize: 32,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  Image.asset('assets/image/Rectangle 132.png'),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white30,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 308,
                    margin: EdgeInsets.all(48),
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "ISSO É UM\nTESTE",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              ListWidget()
            ],
          ),
        ),
      ),
    );
  }
}
