import 'package:flutter/material.dart';

class SubCard extends StatefulWidget {
  const SubCard({super.key});

  @override
  State<SubCard> createState() => _SubCardState();
}

int _currentIndex = 0;

class _SubCardState extends State<SubCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 25,
        itemBuilder: (context, index) {
          return const Column(
            children: [
              Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Joshhua Lawrence',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'D-teams',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'systems',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '277 members',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 0, 0, 0),
                      radius: 23,
                    )
                  ],
                ),
              ),
              Divider(
                color: Color.fromARGB(255, 231, 231, 231),
                height: 0.5,
              )
            ],
          );
        },
      ),
    );
  }
}
