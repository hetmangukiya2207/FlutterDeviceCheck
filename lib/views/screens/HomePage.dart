import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double h = Get.height;
    double w = Get.width;
    return (defaultTargetPlatform == TargetPlatform.android)
        ? Scaffold(
            appBar: AppBar(
              title: const Text("Android Side"),
            ),
            body: Center(
              child: Column(
                children: [
                  Text(
                    "Hello Android User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: h * 0.08,
                    ),
                  ),
                ],
              ),
            ),
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              middle: Text(
                "IOS",
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Hello IOS User",
                    style: TextStyle(
                      fontSize: h * 0.1,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
