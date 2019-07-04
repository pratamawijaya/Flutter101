import 'package:flutter/material.dart';
import 'package:flutter_news_mvvmprovider/domains/news.dart';

class NewsItem extends StatelessWidget {
  News news;

  NewsItem(this.news);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print("click ${news.title}");
          Navigator.pushNamed(context, "/detail", arguments: news);
        },
        child: Row(
          children: <Widget>[
            showImageNews(news),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "${news.title}",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "${news.section}",
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                Text("${news.publishedDate}")
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget showImageNews(News news) {
    if (news.multimedia.length > 2) {
      return Image.network(news.multimedia[3].url, width: 80, height: 80,);
    } else {
      SizedBox(width: 80, height: 80,);
    }
  }
}
