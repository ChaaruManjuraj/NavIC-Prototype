import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'hamburger.dart';
import 'navbar.dart';

class Arrival extends StatelessWidget {
  const Arrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight), child: NavBar()),
        drawer: const Hamburger(),
        body: Center(
          child: Column(children: const [
            SizedBox(height: 20),
            Text('You have arrived!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsets>(
                    EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  ),
                ),
                child: Text('Done', style: TextStyle(fontSize: 18)))
          ]),
        ));
  }
}
