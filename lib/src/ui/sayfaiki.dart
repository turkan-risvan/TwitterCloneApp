import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:twitterclone/src/ui/tools/bottombar.dart';
import 'package:twitterclone/src/ui/profil_page.dart';
import 'package:twitterclone/src/ui/register_page.dart';
import 'package:twitterclone/src/model/twitter_model.dart';


class TwitterHomePage extends StatefulWidget {
  TwitterHomePage({super.key});

  @override
  State<TwitterHomePage> createState() => _TwitterHomePageState();
}

class _TwitterHomePageState extends State<TwitterHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    TweetModel tweet = tweets[0];
    TweetModel tweet1 = tweets[1];
    TweetModel tweet2 = tweets[2];
    TweetModel tweet3 = tweets[3];

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.circle),
        title: Image.network(
          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Logo_of_Twitter.svg/512px-Logo_of_Twitter.svg.png",
          height: 30,
          width: 30,
        ),
        actions: [
          Icon(Icons.stars),
        ],
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
      ),
      body: _buildBody(_currentIndex),
      // bottomNavigationBar: CompNavi(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      // ),
    );
  }

  Widget _buildBody(int currentIndex) {
    switch (currentIndex) {
      case 0:
        return ListView(
          children: [
            _buildTweetContainer(tweets[0]),
            Divider(),
            _buildTweetContainer(tweets[1]),
            Divider(),
            _buildTweetContainer(tweets[2]),
            Divider(),
            _buildTweetContainer(tweets[3]),
          ],
        );
      case 1:
        return RegisterPage();
      case 2:
        return ProfilSayfa();
      default:
        return Container();
    }
  }

  Container _buildTweetContainer(TweetModel tweet) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: kDefaultIconLightColor),
        ),
      ),
      child: Column(
        children: [
          //TweetTopInfo(tweetInfo: tweet.tweetInfoText),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 27.5,
                backgroundImage: NetworkImage(tweet.profilePictureUrl),
              ),
              const SizedBox(
                width: 7.0,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          tweet.name,
                          // style: kTweetStyle.copyWith(
                          //   fontWeight: FontWeight.bold,
                          // ),
                        ),
                        Text(
                          ' @${tweet.tag}',
                         // style: kTweetInfoStyle,
                        ),
                        const SizedBox(width: 2.0),
                        Text(
                          tweet.time,
                        //  style: kTweetInfoStyle,
                        )
                      ],
                    ),
                    const SizedBox(height: 2.0),
                    RichText(
                        text: TextSpan(
                      children: [
                        TextSpan(
                          text: tweet.tweet,
                         // style: kTweetStyle,
                        ),
                        TextSpan(
                          text: '${tweet.hasTag}',
                         // style: kTweetStyle.copyWith(color: kPrimaryColor),
                        ),
                      ],
                    )),
                    const SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        indroductionCounter(
                            'comment', tweet.coments.toString()),
                        indroductionCounter(
                            'retweet', tweet.retweets.toString()),
                        indroductionCounter('heart', tweet.likes.toString()),
                        indroductionCounter('share', ''),
                      ],
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Row indroductionCounter(String iconName, String count) {
    return Row(
      children: [
        Icon(getIconData(iconName)),
        const SizedBox(width: 3.0),
        Text(count),
      ],
    );
  }

  IconData getIconData(String iconName) {
    switch (iconName) {
      case 'comment':
        return Icons.comment;
      case 'heart':
        return Icons.favorite_border;
      case 'retweet':
        return Icons.repeat;
      case 'share':
        return Icons.share;
      default:
        return Icons.error;
    }
  }
}
