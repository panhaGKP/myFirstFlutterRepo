import 'package:flutter/material.dart';

class TelegramPage extends StatefulWidget {
  const TelegramPage({Key? key}) : super(key: key);

  @override
  State<TelegramPage> createState() => _TelegramPageState();
}

class _TelegramPageState extends State<TelegramPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      // drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Hello telegram pages"));
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: Column(children: [
        Expanded(child: _messageListView()),
        _buildTextField(),
      ]),
    );
  }

  Widget _messageListView() {
    return Container(width: double.maxFinite, height: 100, color: Colors.red);
  }

  Widget _buildTextField() {
    return Container(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 30),
      alignment: Alignment.center,
      color: Colors.grey[200],
      child: Row(
        children: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.attach_file)),
          Expanded(
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                child: const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Message here...",
                      border: InputBorder.none,
                    ),
                  ),
                )),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.mic))
        ],
      ),
    );
  }
}
