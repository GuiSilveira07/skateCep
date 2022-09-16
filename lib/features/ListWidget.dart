import 'package:flutter/material.dart';

class ListWidget extends StatefulWidget {
  @override
  _MyListWidgetState createState() => _MyListWidgetState();
}

class _MyListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 350,
      margin: const EdgeInsets.all(5),
      padding: const EdgeInsets.all(5),
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Destaques",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 215,
                      child: ListView.builder(
                        itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Container(
                          height: 280,
                          width: 230,
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(6),
                          child: Stack(
                            alignment: AlignmentDirectional.bottomStart,
                            children: <Widget>[
                              Image.asset(
                                'assets/image/image 22.png',
                                width: 380,
                                height: 330,
                              ),
                              Container(
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 30,
                                  color: Colors.black54,
                                  child: Container(
                                    padding: EdgeInsets.all(7),
                                    child: Text(
                                      "Jornada do Skate Nivel  $index",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
