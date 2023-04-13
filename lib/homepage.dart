import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tester/page/finance.dart';
import 'package:tester/page/home.dart';
import 'package:tester/page/inbox.dart';
import 'package:tester/page/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigate around the bottom nav bar
  int currentTab = 0;

  // pages to navigate
  final List<Widget> screens = [Home(), Finance(), Inbox(), Profile()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Home();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(child: currentScreen, bucket: bucket),
      floatingActionButton: FloatingActionButton(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child:
              Image(width: 60, height: 60, image: AssetImage("")),
        ),
        onPressed: (() {}),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 90,
                      onPressed: () {
                        setState(() {
                          currentScreen = Home();
                          currentTab = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 0 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: () {
                        setState(() {
                          currentScreen = Finance();
                          currentTab = 1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on_rounded,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Finance',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 1 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 90,
                      onPressed: () {
                        setState(() {
                          currentScreen = Inbox();
                          currentTab = 3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home_filled,
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Home',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 90,
                      onPressed: () {
                        setState(() {
                          currentScreen = Profile();
                          currentTab = 4;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.monetization_on_rounded,
                            color: currentTab == 4 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Finance',
                            style: TextStyle(
                              fontSize: 12,
                              color:
                                  currentTab == 4 ? Colors.blue : Colors.grey,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
    // body: _children[currentTab],
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {},
    //   backgroundColor: Colors.amber,
    //   child: Icon(Icons.add),
    // ),
    // floatingActionButtonLocation:
    //     FloatingActionButtonLocation.miniCenterDocked,
    // bottomNavigationBar: BottomAppBar(
    //     notchMargin: 10,
    //     child: Container(
    //       height: 60,
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: <Widget>[
    //           Row(
    //             crossAxisAlignment: CrossAxisAlignment.start,
    //             children: [
    //               MaterialButton(
    //                   minWidth: 40,
    //                   onPressed: () {
    //                     setState(() {});
    //                   })
    //             ],
    //           ),
    //           Row(),
    //         ],
    //       ),
    //     )),
  }
}
