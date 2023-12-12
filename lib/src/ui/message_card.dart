import 'package:flutter/material.dart';

class MessageCard extends StatefulWidget {
  const MessageCard({super.key});

  @override
  State<MessageCard> createState() => _MessageCardState();
}

class _MessageCardState extends State<MessageCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          const Row(
            children: [
              CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text("AzizDjan",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                  Text("A_AzizDjan",
                      style: TextStyle(color: Colors.grey, fontSize: 13))
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Divider(
              color: Colors.grey.withOpacity(0.3),
            ),
          )
        ],
      ),
    );
  }
}
