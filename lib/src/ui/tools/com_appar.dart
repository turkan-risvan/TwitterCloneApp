import 'package:flutter/material.dart';
import 'package:twitterclone/src/ui/search_page.dart';


 AppBar CompSearchAppBar()
{
  return AppBar(title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SearchBarApp(),
        ),
      ) ;
}

AppBar CompMesgAppBar(){
return AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(backgroundColor: Colors.black),
        ) ,
        title: Row(
          children: [
            SizedBox(width:100),
            Text('Messages'),
            SizedBox(width: 50),
            Icon(Icons.settings),
          ],
        ),
      );
}
AppBar CompTweetAppBar(){
  return AppBar(
          toolbarHeight: 50,
          title:Row(
            children: [
              CircleAvatar(backgroundColor: Colors.amber),
               SizedBox(width: 20),
              Text('Lists', 
              style:TextStyle(
              fontWeight: FontWeight.bold,
         ),
         ),
            ],
          ),
    );
}


AppBar CompNotifAppBar(){
   return AppBar(
          leading:const Icon(Icons.chevron_left),
          title: const Text('Lists', 
          style:TextStyle(
          fontWeight: FontWeight.bold,
         ),
         ),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                text :('subscribted to'),
              ),
              Tab(
                text :('member of'),
              ),
            ],
          ),
        );
}