import 'package:flutter/material.dart';

class ScrollDesign extends StatelessWidget {
  const ScrollDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [
                0.5, 0.5
              ],
              colors: [
                Color(0xff5EE8C5),
                Color(0xff30BAD6),
              ]
            ),

          ),
          child: PageView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            children: const [
              FirstScreen(),
              SecondScreen()
            ]
          ),
        )
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Background(),
        MainContent()
      ],
    );
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 30),
          const Text("11°", style: TextStyle(fontSize: 50, fontWeight:  FontWeight.bold, color: Colors.white)),
          const Text("Miércoles", style: TextStyle(fontSize: 50, fontWeight:  FontWeight.bold, color: Colors.white)),
          Expanded(child: Container()),
          const Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
        alignment: Alignment.topCenter,
        color: const Color(0xff30BAD6),
        child: const Image(
            image: AssetImage('assets/scroll.png')
        )
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: () {  },
            style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098FA),
              shape: const StadiumBorder()
            ),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
              child: const Text("Bienvenido",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20)))
        )
      )
    );
  }
}
