class News {
  String url;
  String title;
  String section;
  String source;

  News({this.url, this.title, this.section, this.source});

  News.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    section = json['section'];
    source = json['source'];
  }
}
