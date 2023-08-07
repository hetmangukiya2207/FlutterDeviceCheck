import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/DeviceController.dart';
import '../../controller/InternetController.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final DeviceController _deviceController = Get.put(DeviceController());
  final InternetController _internetController = Get.put(InternetController());

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return (defaultTargetPlatform == TargetPlatform.android)
        ? (_internetController.isConnected.value == true)
            ? Scaffold(
                appBar: AppBar(
                  title: const Text(
                    "Android",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                ),
                body: Center(
                  child: Text(
                    "Connected",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.03,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            : Scaffold(
                appBar: AppBar(
                  title: const Text(
                    "Android",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                body: Center(
                  child: Text(
                    "Disconnected",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.03,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
        : (_internetController.isConnected.value == true)
            ? CupertinoPageScaffold(
                navigationBar: const CupertinoNavigationBar(
                  middle: Text(
                    "IOS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: Text(
                  "Connected",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : CupertinoPageScaffold(
                navigationBar: const CupertinoNavigationBar(
                  middle: Text(
                    "IOS",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                child: Text(
                  "Disconnected",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: h * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
  }
}
