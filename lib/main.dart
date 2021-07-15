import 'package:flutter/material.dart';
import 'package:todoey/screens/taskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/modal/task_data.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:todoey/ad_manager.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();

  runApp(ChangeNotifierProvider(
    create: (context) {return TaskData(); },

    child: MaterialApp(
      home: TaskScreen(),
    ),
  ));
}
