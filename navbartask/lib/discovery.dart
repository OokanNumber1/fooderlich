import 'package:flutter/material.dart';
import 'nearby.dart';

Color activeColor = Colors.yellow;
Color inactiveColor = Colors.white;

enum state { hotel, dining, buffer, cafe, nearby, food, ffood }

class Discovery extends StatefulWidget {
  const Discovery({Key? key}) : super(key: key);

  @override
  _DiscoveryState createState() => _DiscoveryState();
}

class _DiscoveryState extends State<Discovery> {
  state selectedCard = state.buffer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'D I S C O V E R Y',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = state.hotel;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: InfoCard(
                        colour: selectedCard == state.hotel
                            ? activeColor
                            : inactiveColor,
                        icon: Icons.icecream,
                        location: 'Bars & Hotels',
                        numPlace: 42,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCard = state.dining;
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: InfoCard(
                        colour: selectedCard == state.dining
                            ? activeColor
                            : inactiveColor,
                        icon: Icons.handyman,
                        location: 'Fine Dining',
                        numPlace: 15,
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = state.cafe;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: InfoCard(
                        icon: Icons.local_cafe,
                        location: 'Cafes',
                        numPlace: 28,
                        colour: selectedCard == state.cafe
                            ? activeColor
                            : inactiveColor),
                  ),
                )),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = state.nearby;
                      Navigator.push(context,
                          (MaterialPageRoute(builder: (context) => Nearby())));
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: InfoCard(
                        icon: Icons.nearby_off,
                        location: 'Nearby',
                        numPlace: 34,
                        colour: selectedCard == state.nearby
                            ? activeColor
                            : inactiveColor),
                  ),
                )),
              ],
            )),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedCard = state.ffood;
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.all(6),
                        child: InfoCard(
                          icon: Icons.fastfood,
                          location: 'Fast Foods',
                          numPlace: 29,
                          colour: selectedCard == state.ffood
                              ? activeColor
                              : inactiveColor,
                        ),
                      )),
                ),
                Expanded(
                    child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCard = state.food;
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.all(6),
                    child: InfoCard(
                        icon: Icons.local_pizza,
                        location: 'Featured Foods',
                        numPlace: 21,
                        colour: selectedCard == state.food
                            ? activeColor
                            : inactiveColor),
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  const InfoCard(
      {required this.icon,
      required this.location,
      required this.numPlace,
      required this.colour});

  final IconData icon;
  final String location;
  final int numPlace;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colour,
      elevation: 4,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 60,
          ),
          Icon(
            icon,
            size: 50,
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            location,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            '$numPlace Place',
            style: TextStyle(fontSize: 16, color: Colors.grey),
          )
        ],
      ),
    );
  }
}
