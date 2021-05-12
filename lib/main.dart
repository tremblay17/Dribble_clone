//import 'dart:html';
//import 'dart:ffi';
import 'dart:io';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

import 'package:dribble_clone/configuration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'strings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: lightGrey,
            )
          )
        )
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, ThemeData theme, ListView body}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  /// This is the private State class that goes with MyStatefulWidget.
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
    ),
    Text(
      '',
    ),
    Text(
      '',
    ),
    Text(
      ' ',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int i = 0;
  List<bool> _list = [true,false,];
  List<bool> _list1 = [true,false,];
  List<bool> _list2 = [true,false];
  List<bool> _list3 = [true,false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                                                                       ///Header
      body: ListView(
        children: [
          Positioned(
            top: 25,
            left: 25,
            child: Container(
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0,),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: MediaQuery.of(context).size.width * 0.025,
                          child: TextField(
                            enabled: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 3.0,
                                ),
                              ),
                              labelText: Strings.appHeadingTitle,
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 40.0, bottom: 20.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.865,
                          height: MediaQuery.of(context).size.width * 0.075,
                          child: TextField(
                            enabled: false,
                            obscureText: false,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.person,
                                size: 50.0,
                                color: Colors.black,
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 3.0,
                                ),
                              ),
                              labelText: Strings.appSubHeadingTitle,
                              labelStyle: TextStyle(
                                fontSize: 50.0,
                                fontWeight: FontWeight.w700,
                                color: drkPink,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(top: 20.0, bottom: 40.0,),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            height: MediaQuery.of(context).size.width * 0.1,
                            child: TextField(
                              enabled: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: drkPink,
                                ),

                                hintText: Strings.appSearchTitle,
                                hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  color: Colors.grey,
                                ),

                                filled: true,
                                fillColor: lightGrey,

                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    style: BorderStyle.none,
                                    width: 0.0,
                                    color: Colors.transparent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 0.0, top: 0.0),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  new ElevatedButton.icon(
                                    onPressed: (){
                                      setState(() {
                                        _list[i] = !_list[i];
                                        _list1[i] = true;
                                        _list2[i] = true;
                                        _list3[i] = true;
                                      });
                                    },
                                    label: Text(''),
                                    icon: Icon(Icons.trending_up_outlined,
                                      color: lightGrey,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      primary: _list[i] ? Colors.white : drkPink,
                                      onPrimary: _list[i] ? lightGrey : drkPink,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 30,
                                      ),
                                      elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                  new ElevatedButton.icon(
                                    onPressed: (){
                                      setState(() {
                                        _list1[i] = !_list1[i];
                                        _list[i] = true;
                                        _list2[i] = true;
                                        _list3[i] = true;
                                      });
                                    },
                                    label: Text(''),
                                    icon: Icon(Icons.watch_later_outlined,
                                      color: lightGrey,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: _list1[i] ? Colors.white : drkPink,
                                        onPrimary: _list1[i] ? lightGrey : drkPink,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 30,
                                      ),
                                      elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                  new ElevatedButton.icon(
                                    onPressed: (){
                                      setState(() {
                                        _list2[i] = !_list2[i];
                                        _list[i] = true;
                                        _list1[i] = true;
                                        _list3[i] = true;
                                      });
                                    },
                                    label: Text(''),
                                    icon: Icon(Icons.favorite_outline,
                                      color: lightGrey,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: _list2[i] ? Colors.white : drkPink,
                                        onPrimary: _list2[i] ? lightGrey : drkPink,
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 30,
                                        vertical: 30,
                                      ),
                                      elevation: 10,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10),
                                      )
                                    ),
                                  ),
                                  new ElevatedButton.icon(
                                    onPressed: (){
                                      setState(() {
                                        _list3[i] = !_list3[i];
                                        _list[i] = true;
                                        _list2[i] = true;
                                        _list1[i] = true;
                                      });
                                    },
                                    label: Text(''),
                                    icon: Icon(Icons.chat_bubble_outline,
                                      color: lightGrey,
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        primary: _list3[i] ? Colors.white : drkPink,
                                        onPrimary: _list3[i] ? lightGrey : drkPink,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30,
                                          vertical: 30,
                                      ),
                                      elevation: 10,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:40.0,),
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Recommended',
                                  style: GoogleFonts.mcLaren(
                                    fontSize: 40.0,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                TextButton(
                                  onPressed: (){},
                                  child: Text(
                                    'View All',
                                    style: GoogleFonts.firaSans(
                                      color: drkPink,
                                      fontSize: 18.0,
                                    ),
                                  )
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
                                                                ///End of Header
                                                                ///NavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white70,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Likes',
            backgroundColor: Colors.white70,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.white70,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.white70,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: drkPink,
        onTap: _onItemTapped,
      ),
                                                         ///End of NavigationBar
    );
  }
}
