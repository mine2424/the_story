import 'package:flutter/material.dart';
import 'package:the_story/data.dart';
import 'package:the_story/views/story/story_screen.dart';

class HomeSelection extends StatefulWidget {
  @override
  _HomeSelectionState createState() => _HomeSelectionState();
}

enum BottomIcons { Blog, Video, Archive, Other }

class _HomeSelectionState extends State<HomeSelection> {
  BottomIcons bottomIcons = BottomIcons.Video;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: Stack(
        children: [
          bottomIcons == BottomIcons.Blog
              ? StoryScreen(stories: stories)
              : Container(),
          bottomIcons == BottomIcons.Video ? Container() : Container(),
          bottomIcons == BottomIcons.Other ? Container() : Container(),
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                padding: const EdgeInsets.only(left: 60, right: 60, bottom: 36),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomIcons = BottomIcons.Video;
                          });
                        },
                        child: bottomIcons == BottomIcons.Video
                            ? Container(
                                decoration: BoxDecoration(
                                    color:
                                        Colors.indigo.shade100.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(30)),
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.chat,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('掲示板',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                              )
                            : Icon(Icons.chat)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomIcons = BottomIcons.Blog;
                          });
                        },
                        child: bottomIcons == BottomIcons.Blog
                            ? Container(
                                decoration: BoxDecoration(
                                    color:
                                        Colors.indigo.shade100.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(30)),
                                padding: const EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.book,
                                      color: Colors.teal,
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    const Text('ブログ',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                              )
                            : Icon(Icons.book)),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            bottomIcons = BottomIcons.Other;
                          });
                        },
                        child: bottomIcons == BottomIcons.Other
                            ? Container(
                                decoration: BoxDecoration(
                                    color:
                                        Colors.indigo.shade100.withOpacity(0.6),
                                    borderRadius: BorderRadius.circular(30)),
                                padding: EdgeInsets.only(
                                    left: 16, right: 16, top: 8, bottom: 8),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.people,
                                      color: Colors.teal,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text('設定',
                                        style: TextStyle(
                                            color: Colors.teal,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15))
                                  ],
                                ),
                              )
                            : Icon(Icons.people)),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}
