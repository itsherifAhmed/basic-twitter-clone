import 'package:flutter/material.dart';
import 'package:zoomfoyuee/widgets/tweets.dart';

class FeedScreen extends StatefulWidget {
  const FeedScreen({Key key}) : super(key: key);

  @override
  _FeedScreenState createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
              contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
          Tweets(

            userimg: "assets/user.png",
            NameofUser: "ahmed sherif",
            UsreName: "sherif93",
            contentImage: "assets/meesi.png",
            contentText: "hello twitter from my flutter proj",


          ),
        ],
      ),
    );
  }
}
