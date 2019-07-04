class News {
  String url;
  String title;
  String section;
  String source;
  String publishedDate;

  News({this.url, this.title, this.section, this.source, this.publishedDate});

  News.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    section = json['section'];
    source = json['source'];
    publishedDate = json['published_date'];
  }
}
