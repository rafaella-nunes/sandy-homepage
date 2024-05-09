import 'package:flutter/material.dart';
import 'package:sandy/clip.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const LinearGradient gradient = LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF803EFF),
                    Color(0xFF9F6CFF),
                  ],
                );
    return Scaffold(
      backgroundColor: const Color(0xFFFAFBFC),
      body: Stack(
        fit: StackFit.expand,
        children:[ Stack(
          children: [
            ClipPath(
              clipper: CurveClipper(),
              child: Container(
                color: const Color(0xFFF1F1F1),
                height: MediaQuery.of(context).size.height * 0.56,
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RichText(
                    text: const TextSpan(
                      text: 'Olá, eu sou a',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF383838)),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sandy 👋',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF8342FF),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Estou aqui para te ajudar',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 116, 116, 116)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    'assets/images/sandy.png',
                    height: 450,
                    ),

                  DecoratedBox(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(40)),
                          gradient: gradient,
                        ),
                        child: TextButton(
                          onPressed: (){
                          },
                          style: ButtonStyle(
                            overlayColor: MaterialStateProperty.all(Colors.transparent),
                          ),
                          child: Container(
                            alignment: Alignment.center,
                            height: 49,
                            width: MediaQuery.sizeOf(context).width * .7,
                            child: const Text("CONVERSAR COM A SANDY",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 17,
                              fontWeight: FontWeight.bold)),
                          ),
                        ),
                ),
                ],
              ),
            ),
          ],
        ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}