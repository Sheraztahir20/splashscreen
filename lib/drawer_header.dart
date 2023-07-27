import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawer();
}

class _MyHeaderDrawer extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade700,
      width: double.infinity,
      height: 200,
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/professional.png'))),
          ),
          const Text(
            "Sheraz Tahir",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            "sherazt548@gmail.com",
            style: TextStyle(
              color: Colors.grey.shade200,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
