import 'package:flutter/material.dart';
import 'package:untitled/youtube_search/model/item_data.dart';

class VideoPlay extends StatefulWidget {
  final ItemData data;

  const VideoPlay({Key? key, required this.data}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(aspectRatio: 16/9,child: Container(

          ),)
        ],
      ),
    );
  }
}
