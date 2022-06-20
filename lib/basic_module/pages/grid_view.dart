import 'package:flutter/material.dart';
import 'my_row_column.dart';

class MyGridViewPage extends StatefulWidget {
  const MyGridViewPage({Key? key}) : super(key: key);

  @override
  State<MyGridViewPage> createState() => _MyGridViewPageState();
}

class _MyGridViewPageState extends State<MyGridViewPage> {
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
      title: const Text("Welcom to grid view page"),
    );
  }

  Widget _buildBody() {
    return Container(
      child: _buildGridViewBuilder(),
    );
  }

  List<String> movieList = [
    "batman",
    "Hero",
    "Ratarouille",
    "spiderman",
    "multiverse",
    "phone",
    "earthquack Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
    "banana"
  ];
  Widget _buildGridViewBuilder() {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 4 / 6,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: movieList.length,
      itemBuilder: (context, index) {
        return _buildItem(movieList[index]);
      },
    );
  }

  Widget _buildItem(String _movieName) {
    return Container(
      child: Text(_movieName),
      color: Colors.amber,
      padding: const EdgeInsets.all(10),
    );
  }

  Widget _buildGridViewExtend() {
    return GridView.extent(
      maxCrossAxisExtent: 100,
      children: [
        Container(
          width: 80,
          height: 500,
          color: Colors.pink,
        ),
        Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
        Container(
          width: 20,
          height: 70,
          color: Colors.pink,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.grey[400],
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.amber,
        ),
      ],
    );
  }

  Widget _buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 3 / 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      padding: const EdgeInsets.all(10),
      physics: const BouncingScrollPhysics(),
      children: [
        Container(width: 80, height: 500, color: Colors.pink),
        Container(width: 80, height: 500, color: Colors.pink),
        Container(
          width: 100,
          height: 100,
          color: Colors.black,
        ),
        Container(
          width: 20,
          height: 70,
          color: Colors.pink,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.green,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.yellow,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.blue,
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.grey[400],
        ),
        Container(
          width: 50,
          height: 100,
          color: Colors.amber,
        ),
      ],
    );
  }
}
