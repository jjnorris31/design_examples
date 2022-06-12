import 'package:flutter/material.dart';

class BasicDesign extends StatelessWidget {
  const BasicDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            const Image(image: AssetImage('assets/landscape.jpeg')),
            const Title(),
            const Actions(),
            Container(
              margin: const EdgeInsets.only(left: 30, right: 30, top: 20),
              child: const Text("Lorem Ipsum is simply dummy text of the printing and "
                  "typesetting industry. Lorem Ipsum has been the industry's "
                  "standard dummy text ever since the 1500s, when an unknown "
                  "printer took a galley of type and scrambled it to make a type "
                  "specimen book. It has survived not only five centuries, "
                  "but also the leap into electronic typesetting, remaining "
                  "essentially unchanged. It was popularised in the 1960s "
                  "with the release of Letraset sheets containing Lorem Ipsum "
                  "passages, and more recently with desktop publishing software "
                  "like Aldus PageMaker including versions of Lorem Ipsum."),
            )
          ],
        )
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          CustomAction(icon: Icons.add_call, text: "Call"),
          CustomAction(icon: Icons.navigation, text: "Route"),
          CustomAction(icon: Icons.share, text: "Share"),
        ],
      ),
    );
  }
}

class CustomAction extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomAction({
    Key? key, required this.icon, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue),
        Text(text)
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Row(
        children:  [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text("Landscape", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("A beautiful landscape")
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text("41")
        ]
      ),
    );
  }
}