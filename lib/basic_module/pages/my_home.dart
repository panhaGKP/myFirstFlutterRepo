import 'package:flutter/material.dart';

String img =
    "https://m.media-amazon.com/images/M/MV5BOTVhMzYxNjgtYzYwOC00MGIwLWJmZGEtMjgwMzgxMWUwNmRhXkEyXkFqcGdeQXVyNjg2NjQwMDQ@._V1_.jpg";
bool _dark = false;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _dark ? Colors.white : Colors.black,
      appBar: _buildAppBar(),
      endDrawer: _buildDrawer(),
      body: _buildBodyTextField(),
    );
  }

  Widget _buildBodyTextField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color: Colors.grey, borderRadius: BorderRadius.circular(40)),
          child: const TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Email',
              hintStyle: TextStyle(color: Colors.white24),
              icon: Icon(
                Icons.email,
                color: Colors.white,
              ),
              suffixIcon: Icon(Icons.send),
            ),
          ),
        ));
  }

  Widget _buildBody() {
    return Container(
      color: const Color.fromARGB(255, 211, 193, 241),
      alignment: Alignment.center,
      child: _buildCircleImage(),
    );
  }

  Widget _buildCircleImage() {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(40),
          image: DecorationImage(
              image: NetworkImage(img),
              fit: BoxFit.cover,
              alignment: Alignment.topCenter)),
    );
  }

  Widget _buildBox() {
    return SizedBox(
      width: 300,
      height: 300,
      child: Image.network(
        img,
        fit: BoxFit.contain,
        color: Colors.red,
        colorBlendMode: BlendMode.color,
        repeat: ImageRepeat.repeat,
      ),
      // decoration: const BoxDecoration(
      //   color: Colors.amberAccent,
      // ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: Colors.grey[300],
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.orange,
      title: const Center(
          child: Text(
        'សួស្តីកម្មវិធី',
        style: TextStyle(fontFamily: "Siemreap"),
      )),
      leading: IconButton(
          onPressed: () {
            setState(() {
              _dark = !_dark;
            });
          },
          icon: const Icon(Icons.add)),
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [Colors.orange, Colors.pink])),
      ),
    );
  }
}
