import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    FeatureDiscovery(
      recordStepsInSharedPreferences: false,
      child: GetMaterialApp(
        title: "Application",
        debugShowCheckedModeBanner: false,
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: ThemeData(
          primaryColor: Color(0xFFD248A9),
          primaryColorDark: Color(0xFF981D70),
        ),
      ),
    ),
  );
}
