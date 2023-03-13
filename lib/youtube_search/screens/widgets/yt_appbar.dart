import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class YoutubeAppBarWidget extends StatefulWidget {
  const YoutubeAppBarWidget({Key? key}) : super(key: key);

  @override
  State<YoutubeAppBarWidget> createState() => _YoutubeAppBarWidgetState();
}

class _YoutubeAppBarWidgetState extends State<YoutubeAppBarWidget> {
  bool _isSearch = false;

  @override
  Widget build(BuildContext context) {
    return _isSearch == true
        ? _isSearchWidget()
        : Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 130,
                width: 130,
                child: Image.asset("assets/images/youtubelogo.png"),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(FontAwesomeIcons.chromecast),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(Icons.notifications_none_outlined),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                      onTap: () {
                        if (_isSearch == false) {
                          setState(() {
                            _isSearch = true;
                          });
                        }
                      },
                      child: Icon(Icons.search)),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 33,
                    width: 33,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(33),
                        child: Image.network(
                            "https://scontent.flyp6-2.fna.fbcdn.net/v/t1.6435-9/181602340_1430668733945533_3662515010052411658_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=174925&_nc_eui2=AeGz35juW42b-7dzWX6-OyIZBg3I9geWNGkGDcj2B5Y0aYUZtC8ehcVOqMfq0GEwkyWkMt3ulzsnji-q8D96AARA&_nc_ohc=EE-wTwqxCGwAX8nRa05&_nc_ht=scontent.flyp6-2.fna&oh=00_AfBc6KJLlrqkn8Zuc_qdQcC9M_vLxLzuQNbmMxigrB73OQ&oe=6432B794")),
                  ),
                ],
              ),
            ],
          );
  }

  Widget _isSearchWidget() {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isSearch = false;
            });
          },
          child: Icon(Icons.arrow_back),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.grey.shade900,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextFormField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: "Search YouTube",
                  hintStyle: TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.grey.shade900,

          ),
          child: Icon(
            Icons.mic,
          ),
        )
      ],
    );
  }
}
