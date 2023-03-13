import 'package:flutter/material.dart';
import 'package:untitled/const/page_const.dart';
import 'package:untitled/youtube_search/model/item_data.dart';
import 'package:untitled/youtube_search/model/youtube_search_model.dart';
import 'package:untitled/youtube_search/screens/widgets/bottom_nav_widget.dart';
import 'package:untitled/youtube_search/screens/widgets/yt_appbar.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class YoutubeSearchPage extends StatefulWidget {
  const YoutubeSearchPage({Key? key}) : super(key: key);

  @override
  State<YoutubeSearchPage> createState() => _YoutubeSearchPageState();
}

class _YoutubeSearchPageState extends State<YoutubeSearchPage> {
  @override
  void initState() {
    super.initState();
    _laodMockData();
  }

  List<ItemData> items = [];
  bool _isLoading = true;

  Future<void> _laodMockData() async {
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    });
    final searchData = await rootBundle.loadString("assets/files/youtube_search.json");
    final responseData = YoutubeSearchModel.fromJson((json.decode(searchData)));
    items = responseData.items!;
    print(responseData.items?[1].snippet?.thumbnails?.high?.width);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: YoutubeAppBarWidget(),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
      backgroundColor: Colors.black,
      body: _isLoading == true
          ? Center(
              child: CircularProgressIndicator(
                color: Colors.red,
                backgroundColor: Colors.black,
              ),
            )
          : ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("data = ${items[index].id!.videoId}");
                         Navigator.pushNamed(context, PageConst.videoPlay, arguments: items[index]);
                        },
                        child: Container(
                          height: 200,
                          width: double.infinity,
                          color: Colors.grey,
                          child: Image.network(
                            items[index].snippet?.thumbnails?.medium?.url as String,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      ListTile(
                        leading: Container(
                          height: 40,
                          width: 40,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(35),
                            child: Image.network(
                                "https://scontent.flyp6-2.fna.fbcdn.net/v/t1.6435-9/181602340_1430668733945533_3662515010052411658_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGz35juW42b-7dzWX6-OyIZBg3I9geWNGkGDcj2B5Y0aYUZtC8ehcVOqMfq0GEwkyWkMt3ulzsnji-q8D96AARA&_nc_ohc=EE-wTwqxCGwAX8nRa05&_nc_ht=scontent.flyp6-2.fna&oh=00_AfBc6KJLlrqkn8Zuc_qdQcC9M_vLxLzuQNbmMxigrB73OQ&oe=6432B794"),
                          ),
                        ),
                        title: Text(
                          "${items[index].snippet?.title}",
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          "${items[index].snippet?.channelTitle}",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                        trailing: Icon(
                          Icons.more_vert,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
