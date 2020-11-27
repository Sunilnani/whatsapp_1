import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/secondscreen.dart';

import 'firstscreen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                icon: Icon( Icons.search ),
                onPressed: () { },
              ),
            ],
            backgroundColor: Colors.green,
            title: Text('WhatsApp'),
            bottom: TabBar(
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              tabs: [
                Tab(icon: Icon(Icons.camera_alt_outlined),),
                Tab( text: "CHARTS",),
                Tab( text: "STATUS"),
                Tab(text: "CALLS",)
              ],
            ),
          ),
          body: TabBarView(
            children: [
              FirstScreen(),
              SecondScreen(),
              ThirdScreen(),
              FourthScreen()

            ],
          ),
        ),
      ),
    );
  }
}
class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
class FourthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

