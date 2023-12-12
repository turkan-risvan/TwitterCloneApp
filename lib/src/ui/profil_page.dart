import 'package:flutter/material.dart';
import 'package:twitterclone/src/ui/like_page.dart';
import 'package:twitterclone/src/ui/media_page.dart';
import 'package:twitterclone/src/ui/tweets.dart';
import 'package:twitterclone/src/ui/tweets_replies.dart';

class ProfilSayfa extends StatefulWidget {
  const ProfilSayfa({super.key});

  @override
  State<ProfilSayfa> createState() => _ProfilSayfaState();
}

class _ProfilSayfaState extends State<ProfilSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const CircleAvatar(
          radius: 5,
          backgroundColor: Color.fromARGB(255, 44, 44, 44),
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Digital Goodies Team',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),

      //  TabBarView(
      //         children: <Widget>[
      //           Tweets(),
      //           TweetsRepliesPage(),
      //           MediaPage(),
      //           LikePage()
      //         ],
      //       ),

      //       bottomNavigationBar: CompNavi(
      //         currentIndex: _currentIndex,
      //         onTap: (index) {
      //           setState(() {
      //             _currentIndex = index;
      //           });
      //         },
      //       ),
      body: ProfileWidgets(),
    );
  }
}

class ProfileWidgets extends StatelessWidget {
  const ProfileWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              color: const Color.fromRGBO(0, 0, 0, 1),
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, top: 10),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child:  Text('Edit Profile',
                        style: TextStyle(color: Colors.blue)),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 1, // Gölge miktarı
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(20.0), // Kenar yuvarlaklığı
                        side: const BorderSide(
                            color: Colors.blue), // Kenarlık rengi
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pixseliz",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "@Pixseliz",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Digital Goodies Team - Web & Mobile UI/UX\n develeopment;Graphics;Illustrations",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.link,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "@Pixseliz",
                        style: TextStyle(fontSize: 10, color: Colors.blue),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.calendar_month_rounded,
                        color: Colors.grey,
                        size: 15,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Joined September 2018",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        "217",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "@Pixseliz",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "118",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Joined September 2018",
                        style: TextStyle(fontSize: 10, color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
        const Positioned(
            top: 25,
            left: 25,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.black,
              ),
            ))
      ],
    );
  }
}
