import 'package:flutter/material.dart';
import 'package:untitled/youtube_search/model/item_data.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPlay extends StatefulWidget {
  final ItemData item;

  const VideoPlay({Key? key, required this.item}) : super(key: key);

  @override
  State<VideoPlay> createState() => _VideoPlayState();
}

class _VideoPlayState extends State<VideoPlay> {
  YoutubePlayerController? _youtubePlayerController;

  @override
  void initState() {
    super.initState();
    _youtubePlayerController = YoutubePlayerController(
      initialVideoId: widget.item.id!.videoId!,
      flags: YoutubePlayerFlags(
        autoPlay: true,
        forceHD: false,
        mute: false,
        loop: false,
        isLive: false,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 35),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: YoutubePlayer(
                controller: _youtubePlayerController!,
                progressIndicatorColor: Colors.red,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "${widget.item.snippet?.title}",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "${widget.item.snippet?.description}",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
