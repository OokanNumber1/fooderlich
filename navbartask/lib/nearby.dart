import 'package:flutter/material.dart';

class Nearby extends StatelessWidget {
  const Nearby({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        iconTheme: IconThemeData(color: Colors.yellow),
        backgroundColor: Colors.white,
        actions: [Icon(Icons.calculate)],
        title: Text(
          'Nearby',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Tile(image: 'thai.jpg', name: 'Good Thai', rank: '4.8')),
            Expanded(
                child:
                    Tile(image: 'sushi.jpg', name: 'Sushi Car', rank: '3.8')),
            Expanded(
                child: Tile(
                    image: 'cafe.jpg', name: 'Blacksmith Cafe', rank: '4.8')),
            Expanded(
                child:
                    Tile(image: 'pizzBox.jpg', name: 'Pizza Box', rank: '4.2')),
          ]),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({required this.image, required this.name, required this.rank});

  final String image;
  final String name;
  final String rank;

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Container(
              constraints: BoxConstraints.expand(height: 300, width: 250),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/$image'), fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              textBaseline: TextBaseline.ideographic,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30),
                  child: Text(
                    '11:30AM to 11PM',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  name,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 35),
                Text(
                  '20 Queen Street, NSW',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Asian, Thai',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                )
              ]),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Chip(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                    backgroundColor: Colors.yellow,
                    label: Text(rank)),
              ),
              SizedBox(
                height: 100,
              ),
              Icon(
                Icons.bookmark,
                color: Colors.teal,
              )
            ],
          )
        ]));
  }
}
