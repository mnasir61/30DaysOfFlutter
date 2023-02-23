import 'package:flutter/material.dart';

class TikTokUI extends StatefulWidget {
  const TikTokUI({Key? key}) : super(key: key);

  @override
  State<TikTokUI> createState() => _TikTokUIState();
}

class _TikTokUIState extends State<TikTokUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 20,
            right: 20,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.close,
                  size: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.queue_music,
                      size: 30,
                    ),
                    Text(
                      "Sounds",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Icon(
                      Icons.filter_rounded,
                      size: 30,
                    ),
                    Text(
                      "Filter",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.speed,
                      size: 30,
                    ),
                    Text(
                      "Speed",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.generating_tokens,
                      size: 30,
                    ),
                    Text(
                      "Rating",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 30,
                    ),
                    Text(
                      "Flip",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.more_time,
                      size: 30,
                    ),
                    Text(
                      "Timer",
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.flash_auto,
                      size: 30,
                    ),
                    Text(
                      "Flash",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: 40,
            right: 40,
            bottom: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.image,
                        size: 30,
                      ),
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Effects",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(80),
                        color: Colors.red.withOpacity(1),
                      ),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      child: Icon(
                        Icons.upload,
                        size: 30,
                      ),
                      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(10)),
                    ),
                    Text(
                      "Upload",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
