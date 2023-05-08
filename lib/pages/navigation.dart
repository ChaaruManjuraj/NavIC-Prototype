import 'package:flutter/material.dart';
import 'package:navic/pages/navbar.dart';
import 'package:navic/pages/hamburger.dart';
import 'package:navic/pages/constants.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight), child: NavBar()),
        drawer: const Hamburger(),
        body: Column(
          children: [
            const SizedBox(height: 20),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Source',
                    hintText: "Enter the source location",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                )),
            const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'Destination',
                    hintText: "Enter the destination location",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0)),
                    ),
                  ),
                )),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              style: ButtonStyle(
                padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
                backgroundColor: MaterialStatePropertyAll(highlightColor),
              ),
              onPressed: null,
              icon: const Icon(Icons.search),
              label: Text("Search Routes".toUpperCase(),
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  )),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton.icon(
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStatePropertyAll(highlightColor),
                  ),
                  onPressed: null,
                  icon: const Icon(Icons.directions_bus),
                  label: Text("Bus".toUpperCase(),
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      )),
                ),
                OutlinedButton.icon(
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStatePropertyAll(highlightColor),
                  ),
                  onPressed: null,
                  icon: const Icon(Icons.directions_car),
                  label: Text("Car".toUpperCase(),
                      style: TextStyle(
                        color: secondaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      )),
                ),
                OutlinedButton.icon(
                  style: ButtonStyle(
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(10)),
                    backgroundColor: MaterialStatePropertyAll(backgroundColor),
                  ),
                  onPressed: null,
                  icon: const Icon(
                    Icons.directions_walk,
                    color: Colors.white,
                  ),
                  label: Text("Walk".toUpperCase(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 0.5,
                      )),
                ),
              ],
            ),
          ],
        ));
  }
}
