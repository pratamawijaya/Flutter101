class Images {
  String url;
  int height;
  int width;

  Images({this.url, this.height, this.width});

  Images.fromJson(Map<String,dynamic> json){
    url = json['url'];
    height = json['height'];
    width = json['width'];
  }

}