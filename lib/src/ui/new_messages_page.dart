import 'package:flutter/material.dart';
import 'package:twitterclone/src/ui/search_page.dart';

class NewMessagePage extends StatefulWidget {
  const NewMessagePage({super.key});

  @override
  State<NewMessagePage> createState() => _NewMessagePageState();
}

class _NewMessagePageState extends State<NewMessagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(

      //   leading: const Icon(
      //     Icons.chevron_left,
      //     color: Colors.blue,
      //   ),
      //   title: const Text(
      //     'Lists',
      //     style: TextStyle(fontWeight: FontWeight.bold),
      //   ),
      //   // bottom: const TabBar(
      //   //   tabs: <Widget>[
      //   //     Tab(s
      //   //       text: "Subscribed to",
      //   //     ),
      //   //     Tab(
      //   //       text: "Member of",
      //   //     ),
      //   //   ],
      //   // ),
      // ),
      body: ListView.builder(
        itemBuilder: (context, index) {
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
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15)),
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
        },
      ),
    );
  }
}
