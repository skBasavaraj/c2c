import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import 'fragments/PDashBoardFragment.dart';
import 'fragments/profile.dart';
import 'fragments/searchfragment.dart';
import 'fragments/sellFragment.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int currentIndex = 0;

  double iconSize = 24;


  @override
  Widget build(BuildContext context) {
    setStatusBarColor(Colors.black);

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return DoublePressBackWidget(
        child: SafeArea(

          child: Scaffold(
              body: Stack(
                children: [
                 // TopNameWidget() ,

                  Container(
                    margin: EdgeInsets.only(top: currentIndex != 3 ? 70 : 0),
                    child: [
                      //
                      const PDashBoardFragment(),

                      const searchFragment(),
                      const SellFragmnet(),
                      const Profile()
                    ][currentIndex],
                  ),
                ],
              ),
              bottomNavigationBar:

              BottomNavigationBar(

                currentIndex: currentIndex,
                onTap: (i) {
                  currentIndex = i;
                  setState(() {});
                },

                type: BottomNavigationBarType.fixed,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                selectedItemColor: Colors.blue,
                backgroundColor:  Colors.white,
                mouseCursor: MouseCursor.uncontrolled,
                elevation: 12,
                items: const [
                  BottomNavigationBarItem(
                    icon:  Icon(Icons.dashboard_outlined,color: Colors.black,weight: 30),
                    activeIcon: Icon(Icons.dashboard, color: Colors.lightBlue,weight: 50,shadows: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 1)],),
                    label:  "Dashboard",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search,color: Colors.black,weight: 30)
                      ,  activeIcon:  Icon(Icons.search_outlined, color: Colors.lightBlue,weight: 50,shadows: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 1)]),  label:  "search",
                  ),
                  BottomNavigationBarItem(
                    icon:   Icon(Icons.sell_outlined,color: Colors.black,weight: 30),
                    activeIcon: Icon(Icons.sell, color: Colors.lightBlue,weight: 50,shadows: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 1)]),
                    label:  "sell",
                  ),
                  BottomNavigationBarItem(
                    icon:  Icon(Icons.person_outline_outlined,color: Colors.black,weight: 30),
                    activeIcon:  Icon(Icons.person,color: Colors.lightBlue,weight: 50,shadows: [BoxShadow(color: Colors.grey,blurRadius: 1,spreadRadius: 1)]),
                    label: "Settings",
                  ),
                ],
              )
          ),
        ),
      );
  }
}


