import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/constants/movie_list_constants.dart';
import 'package:flutter_application_1/basic_module/models/movie_model.dart';

class MyTikTokPage extends StatefulWidget {
  const MyTikTokPage({Key? key}) : super(key: key);

  @override
  State<MyTikTokPage> createState() => _MyTikTokPageState();
}

class _MyTikTokPageState extends State<MyTikTokPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildBottomNavigation() {
    return BottomAppBar(
      color: Colors.black,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.home,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.message,
              color: Colors.white,
            )),
      ]),
    );
  }

  Widget _buildBody() {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return _buildItem(movieList[index]);
      },
      itemCount: movieList.length,
    );
  }

  Widget _buildItem(MovieModels item) {
    return GestureDetector(
      onDoubleTap: () {
        if (!item.isFavorite) {
          setState(() {
            item.isFavorite = true;
          });
        }
      },
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              item.image,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: _buildIconBox(item),
          ),
        ],
      ),
    );
  }

  Widget _buildIconBox(MovieModels item) {
    return SizedBox(
      // width: 50,
      // height: 100,
      // color: Colors.yellow,
      child: Column(children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              color: Colors.white,
            )),
        const SizedBox(height: 20),
        InkWell(
            onTap: () {
              setState(() {
                item.isFavorite = !item.isFavorite;
              });
            },
            child: Column(
              children: [
                Icon(Icons.favorite,
                    color: item.isFavorite ? Colors.red : Colors.white),
                const Text(
                  "35.4k",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        const SizedBox(height: 20),
        InkWell(
            onTap: () {},
            child: Column(
              children: const [
                Icon(Icons.comment, color: Colors.white),
                Text(
                  "1k",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        const SizedBox(height: 20),
        InkWell(
            onTap: () {},
            child: Column(
              children: const [
                Icon(Icons.bookmark, color: Colors.white),
                Text(
                  "5k",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        const SizedBox(height: 20),
        InkWell(
            onTap: () {},
            child: Column(
              children: const [
                Icon(CupertinoIcons.arrowshape_turn_up_right_fill,
                    color: Colors.white),
                Text(
                  "4k",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
        const SizedBox(height: 20),
      ]),
    );
  }
}

class MyTikTokPageController {}
