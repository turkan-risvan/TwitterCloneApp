import 'package:flutter/material.dart';

class Memb extends StatefulWidget {
  const Memb({super.key});

  @override
  State<Memb> createState() => _MembState();
}

class _MembState extends State<Memb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 215, 237, 255),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 50),
              child: Column(
                children: [
                  Text(
                    "You haven't created or\n subscribet to any list",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "You haven't created or subscribet to any list",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, // Background color
                      onPrimary: Colors.white, // Text Color (Foreground color)
                    ),
                    child: const Text(
                      'Create a List',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        child: Icon(
          Icons.file_copy_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
