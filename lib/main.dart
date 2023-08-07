import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'views/screens/HomePage.dart';

void main(){
  runApp(
      GetMaterialApp(
        theme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        getPages: [
          GetPage(
            name: "/",
            page: () => HomePage(),
          ),
        ],
      ),
  );
}