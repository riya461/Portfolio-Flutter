

import 'package:flutter/material.dart';

class MyProject extends StatefulWidget {
  const MyProject({Key? key}) : super(key: key);

  @override
  State<MyProject> createState() => _MyProjectState();
}

class _MyProjectState extends State<MyProject> {
  projetCard(lang, title, description, coloring) {
    // ignore: sized_box_for_whitespace
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 220,
      child: Card(
        // ignore: sort_child_properties_last
        child: Container(
          margin: const EdgeInsets.only(left: 20, top: 30, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                lang,
                style: TextStyle(
                  color: coloring,
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                title,
                style: TextStyle(
                    color: coloring,
                    fontSize: 30,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                description,
                style:  TextStyle(color : coloring, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              
            ],
          ),
        ),
        color: const Color(0xff262628),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff1e1e1e),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xff252525),
        title: const Text('Projects'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(bottom: 20, top: 10),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              projetCard(
                  'FLUTTER', 'Profile Creation', 'Creating a sample profile using basic flutter', Colors.white),
              
              projetCard(
                  'PYTHON', 'Space Invaders', 'Space Invaders game as Multiplayer mode', Colors.white),
              
              projetCard(
                  'MATPLOTLIB', 'Weight Tracker', 'Graphical analysis of Tracking Weight ', Colors.white),
              
            ],
          ),
        ),
      ),
    );
  }
}