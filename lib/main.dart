import 'package:flutter/material.dart';
import 'package:sandy/clip.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sandy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        typography: Typography.material2021(),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Sandy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
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
                          fontSize: 23,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF383838)),
                      children: <TextSpan>[
                        TextSpan(
                          text: ' Sandy 👋',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 23,
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
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 116, 116, 116)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Image.asset(
                    'assets/images/sandy.png',
                    height: 450,
                    ),
                  ElevatedButton(
                    onPressed: () {
                      // Ação a ser executada quando o botão for pressionado
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(0xFF8342FF), // Cor de fundo do botão
                      foregroundColor: Colors.white, // Cor do texto do botão
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 18), // Espaçamento interno do botão
                      textStyle: const TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            30), // Borda arredondada do botão
                      ),
                    ),
                    child: const Text('CONVERSAR COM A SANDY'),
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
