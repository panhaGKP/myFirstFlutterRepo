import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/pages/grid_view.dart';
import 'package:flutter_application_1/basic_module/pages/my_Page_View.dart';
import 'package:flutter_application_1/basic_module/pages/my_row_column.dart';
import 'package:flutter_application_1/basic_module/pages/my_tiktok_page.dart';
import 'package:flutter_application_1/basic_module/pages/telegram_layout.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'basic_module/pages/my_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyTikTokPage(),
    );
  }
}
