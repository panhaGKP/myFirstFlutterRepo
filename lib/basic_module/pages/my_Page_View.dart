import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/basic_module/constants/movie_list_constants.dart';
import 'package:flutter_application_1/basic_module/models/movie_model.dart';

class MyPageView extends StatefulWidget {
  const MyPageView({Key? key}) : super(key: key);

  @override
  State<MyPageView> createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
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
      title: const Text("My page view"),
    );
  }

  Widget _buildBody() {
    return _buildMainListView();
  }

  Widget _buildListView() {
    return SizedBox(
      child: Container(
        // height: 400,
        color: Colors.white,
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          physics: const NeverScrollableScrollPhysics(),
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
      ),
    );
  }

  Widget _buildMainListView() {
    return ListView(
      children: [
        _buildSlideShow(),
        _buildListView(),
        _buildSlideShow(),
      ],
    );
  }

  Widget _buildSlideShow() {
    return SizedBox(
      height: 400,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: movieList.length,
        itemBuilder: (context, index) {
          return _buildItem(movieList[index]);
        },
      ),
    );
  }

  Widget _buildItem(MovieModels item) {
    return Container(
      child: Image.network(
        item.image,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildPageView() {
    return Container(
      child: PageView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
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
          ]),
    );
  }
}
