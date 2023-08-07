import 'package:devicecheckwithinternet/views/screens/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
  runApp(
    GetMaterialApp(
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(
          name: "/",
          page: () => const HomePage(),
        ),
      ],
    ),
  );
}