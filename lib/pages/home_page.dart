import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_smart_watering/main.dart';
import 'package:flutter_smart_watering/pages/login_page.dart';

class HomePage extends MyApp {
  DefaultTabController myController = const DefaultTabController(
    length: 3,
    child: Tab(),
  );

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Smart Watering Aplication"),
            bottom: const PreferredSize(
              preferredSize: Size.fromHeight(100),
              child: DefaultTabController(
                length: 3,
                child: TabBar(
                  tabs: [
                    Tab(
                      text: ("Temperature"),
                    ),
                    Tab(
                      text: ("Humidity"),
                    ),
                    Tab(
                      text: ("Soil Moisture"),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
