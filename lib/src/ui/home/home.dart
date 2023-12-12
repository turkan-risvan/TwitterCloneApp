import 'package:flutter/material.dart';
import 'package:twitterclone/src/ui/tools/com_appar.dart';
import 'package:twitterclone/src/ui/login_page.dart';
import 'package:twitterclone/src/ui/memb.dart';
import 'package:twitterclone/src/ui/sayfaiki.dart';
import 'package:twitterclone/src/ui/sub_card.dart';
import 'package:twitterclone/src/ui/subs.dart';
import 'package:twitterclone/src/ui/drawer/twitter_drawer.dart';
 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   
   int selectedScreen=0;
    void ChangeScreen(int   index){
      setState((){
        selectedScreen =  index;
        showScreen(selectedScreen); 
        selectAppBar(selectedScreen); 

        });
    }
  Widget? showScreen(int selectedScreen)
  {
    if(selectedScreen==0)
        return TwitterHomePage();
    else if(selectedScreen==1)
          return Memb();
  else if(selectedScreen==2)
      return SubCard();
    else if(selectedScreen==3)
      return LoginPage();

  }
  AppBar? selectAppBar(int selectAppBar){
    if(selectedScreen==0)
        return CompTweetAppBar();
    else if(selectedScreen==1)
        return CompSearchAppBar();
    // else if(selectedScreen==2)
    //   return CompNotifAppBar() ;
    else if(selectedScreen==3)
      return CompMesgAppBar();
  }
  
  
   @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar:selectAppBar(selectedScreen) ,
     body: showScreen(selectedScreen),
      drawer: const CompDrawer(),
     bottomNavigationBar: NavigationBar(
      selectedIndex: selectedScreen,
      onDestinationSelected: ChangeScreen,
      destinations: const <Widget>[
        NavigationDestination(
          label: '',
          icon: Icon(Icons.home_outlined),
        ),
        NavigationDestination(
          label: '',
          icon: Icon(Icons.search),
        ),
        NavigationDestination(
          label: '',
          icon: Icon(Icons.notifications_sharp),
        ),
        NavigationDestination(
          label: '',
          icon: Icon(Icons.message),
        ),
      ],
      //indicatorColor: Colors.grey,
    ),
    );
  }
}