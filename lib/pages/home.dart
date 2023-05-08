import 'package:flutter/material.dart';
import 'package:navic/pages/navbar.dart';
import 'package:navic/pages/hamburger.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight), child: NavBar()),
      drawer: const Hamburger(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/map.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
