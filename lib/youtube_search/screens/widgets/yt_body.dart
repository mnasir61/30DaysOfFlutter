import 'package:flutter/material.dart';

class YoutubeBodyWidget extends StatelessWidget {
  const YoutubeBodyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              child: Center(child: Text("Image")),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 35,
                  width: 35,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(35),
                    child: Image.network(
                        "https://scontent.flyp6-2.fna.fbcdn.net/v/t1.6435-9/181602340_1430668733945533_3662515010052411658_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGz35juW42b-7dzWX6-OyIZBg3I9geWNGkGDcj2B5Y0aYUZtC8ehcVOqMfq0GEwkyWkMt3ulzsnji-q8D96AARA&_nc_ohc=EE-wTwqxCGwAX8nRa05&_nc_ht=scontent.flyp6-2.fna&oh=00_AfBc6KJLlrqkn8Zuc_qdQcC9M_vLxLzuQNbmMxigrB73OQ&oe=6432B794"),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Video Title",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      Text(
                        "Description",
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
