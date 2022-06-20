import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/pages/detail_page.dart';
import 'package:page_transition/page_transition.dart';

class MyRowColumnPage extends StatefulWidget {
  const MyRowColumnPage({Key? key}) : super(key: key);

  @override
  State<MyRowColumnPage> createState() => _MyRowColumnPageState();
}

class _MyRowColumnPageState extends State<MyRowColumnPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      // drawer: _buildDrawer(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(backgroundColor: Colors.deepOrange, title: _buildMenu1());
  }

  Widget _buildMenu1() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
        InkWell(
          child: const Text("Hello"),
          onTap: () {},
        ),
        const SizedBox(width: 10),
      ]),
    );
  }

  Widget _buildBody() {
    return Container(
      alignment: Alignment.center,
      child: _buildListView(),
    );
  }

  Widget _buildStack() {
    return Container(
      color: Colors.red,
      child: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        physics: const BouncingScrollPhysics(),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 160,
              height: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 140,
              height: 140,
              color: Colors.green,
            ),
            Container(
              width: 120,
              height: 120,
              color: Colors.pink,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            Positioned(
              child: Container(width: 80, height: 80, color: Colors.pink),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListViewBuilder() {
    List<String> _movieList = [
      "batman",
      "Hero",
      "Ratarouille",
      "spiderman",
      "multiverse",
      "phone",
      "earthquack Lorem ipsum dolor sit amet, consectetur adipisicing elit.",
      "banana"
    ];
    return ListView.builder(
      itemCount: _movieList.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) => MyDetailPage(_movieList[index]),
            //   ),
            // );
            Navigator.of(context).push(PageTransition(
                child: MyDetailPage(_movieList[index]),
                type: PageTransitionType.bottomToTop,
                fullscreenDialog: true));
          },
          child: Container(
            height: 100,
            color: Colors.pink,
            margin: const EdgeInsets.all(10),
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Text(
              _movieList[index],
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }

  Widget _buildListView() {
    return Container(
      color: Colors.white,
      child: ListView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            width: 80,
            height: 100,
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
      ),
    );
  }

  Widget _buildRow() {
    return Container(
      color: Colors.red,
      child: SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
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
        ),
      ),
    );
  }
}
