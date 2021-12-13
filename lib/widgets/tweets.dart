import 'package:flutter/material.dart';


class Tweets extends StatelessWidget {
  final String userimg;
  final String NameofUser;
  final String UsreName;
  final String contentImage;
  final String contentText;


  Tweets({this.userimg, this.NameofUser, this.UsreName, this.contentImage,
    this.contentText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.red,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(

                  children: [
                    Image.asset("$userimg"),
                    SizedBox(width: 20,),
                    Text("$NameofUser"),
                    Text("@$UsreName"),

                  ],
                ),
                Icon(Icons.add)
              ],
            ),
            Text("$contentText"),
            Image.asset("$contentImage"),


          ],
        ),
      ),
    );
  }
}
