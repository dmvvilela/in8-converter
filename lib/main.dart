import 'package:feature_discovery/feature_discovery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';

void main() async {
  await GetStorage.init();
  runApp(
    FeatureDiscovery(
      recordStepsInSharedPreferences: false,
      child: GetMaterialApp(
        title: "IN8 Converter",
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
