import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/home.dart';

void main() {
  runApp(MaterialApp(theme: ThemeData(
    primarySwatch: Colors.red,
    fontFamily: 'OpenSans'


  ),
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {

      '/': (context) => const MyHome(),
      '/about': (context) => const MyApp(),
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.black,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 60),
              child: ShaderMask(
                shaderCallback: (rect) {
                  return const LinearGradient(
                    begin: Alignment.center,
                    end: Alignment.bottomCenter,
                    colors: [Colors.black, Colors.transparent],
                  ).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
                },
                blendMode: BlendMode.dstIn,
                child: Image.asset(
                  'images/ss_ss1.png',
                  height: 400,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.55),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Text(
                    'Hello...',
                    style: TextStyle(color: Colors.brown, fontSize: 30, fontFamily: 'Dancing Script'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  

                    const Text('Riya Sabu',
                        style: TextStyle(
                            fontFamily: "Dancing Script",
                            color: Colors.brown,
                            fontSize: 40,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text(
                      'Flutter Developer',
                      style: TextStyle(
                          color: Colors.brown,
                          fontFamily: "Dancing Script",
                          fontSize: 20),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          )),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          )),
                     
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}