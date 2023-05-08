import 'package:flutter/material.dart';
import 'package:navic/pages/constants.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: tertiaryColor,
      title: const Text('NavIC'),
    );
  }
}