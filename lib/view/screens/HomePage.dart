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
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {
                    Get.changeTheme(
                      Get.isDarkMode == true
                          ? ThemeData.light(useMaterial3: true)
                          : ThemeData.dark(useMaterial3: true),
                    );
                  },
                  icon: const Icon(
                    Icons.dark_mode_outlined,
                  ),
                )
              ],
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Hello Android User",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: h * 0.035,
                    ),
                  ),
                ],
              ),
            ),
          )
        : CupertinoPageScaffold(
            navigationBar: CupertinoNavigationBar(
              backgroundColor: (Get.isDarkMode == true)
                  ? CupertinoColors.black
                  : CupertinoColors.white,
              middle: const Text(
                "IOS",
              ),
              trailing: CupertinoButton(
                child: const Icon(
                  CupertinoIcons.moon,
                ),
                onPressed: () {
                  Get.changeTheme(
                    Get.isDarkMode == true
                        ? ThemeData.light()
                        : ThemeData.dark(),
                  );
                },
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "Hello IOS User",
                    style: TextStyle(
                      fontSize: h * 0.04,
                      fontWeight: FontWeight.bold,
                      color: CupertinoColors.black,
                    ),
                  ),
                )
              ],
            ),
          );
  }
}
