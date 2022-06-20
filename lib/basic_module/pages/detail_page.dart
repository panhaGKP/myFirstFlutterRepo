import 'package:flutter/material.dart';

class MyDetailPage extends StatefulWidget {
  // const MyDetailPage({Key? key}) : super(key: key);
  String nameList = "hello";
  MyDetailPage(this.nameList);
  @override
  State<MyDetailPage> createState() => _MyDetailPageState();
}

class _MyDetailPageState extends State<MyDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      // drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(backgroundColor: Colors.deepOrange);
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      color: Colors.white10,
      child: Text(
        widget.nameList,
        style: const TextStyle(color: Colors.orange, fontSize: 40),
      ),
    );
  }
}
