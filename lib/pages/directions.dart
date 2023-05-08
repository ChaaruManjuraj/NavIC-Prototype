import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:navic/pages/navbar.dart';
import 'package:navic/pages/hamburger.dart';

class Directions extends StatelessWidget {
  const Directions({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight), child: NavBar()),
        drawer: Hamburger(),
        body: DirectionList(),
      ),
    );
  }
}

class DirectionList extends StatelessWidget {
  const DirectionList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: const [
        DirectionStep(
          iconData: Icons.arrow_upward,
          instruction: 'Go straight for 2.0 miles',
          isHighlighted: false,
        ),
        DirectionStep(
          iconData: Icons.arrow_back,
          instruction: 'Turn left',
          isHighlighted: true,
        ),
        DirectionStep(
          iconData: Icons.arrow_upward,
          instruction: 'Go straight for 0.4 miles',
          isHighlighted: false,
        ),
        DirectionStep(
          iconData: Icons.arrow_forward,
          instruction: 'Turn right',
          isHighlighted: false,
        ),
      ],
    );
  }
}

class DirectionStep extends StatelessWidget {
  final IconData iconData;
  final String instruction;
  final bool isHighlighted;

  const DirectionStep(
      {super.key,
      required this.iconData,
      required this.instruction,
      required this.isHighlighted});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      color: isHighlighted ? Colors.blue.shade100 : Colors.white,
      child: ListTile(
        leading: Icon(iconData, size: 36),
        title: Text(
          instruction,
          style: TextStyle(
            fontWeight: isHighlighted ? FontWeight.bold : FontWeight.normal,
            color: isHighlighted ? Colors.blue.shade700 : Colors.black,
          ),
        ),
      ),
    );
  }
}
