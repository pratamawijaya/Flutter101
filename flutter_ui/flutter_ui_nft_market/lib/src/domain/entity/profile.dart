import 'package:flutter_ui_nft_market/src/domain/entity/art.dart';

class Profile {
  String? imgUrl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  List<Art>? creations;
  List<Art>? collections;

  Profile(
      {this.imgUrl,
      this.name,
      this.twitter,
      this.desc,
      this.email,
      this.creations,
      this.collections});

  static Profile generateProfile() {
    return Profile(
      name: "Etan Munde",
      imgUrl: "assets/images/avatar.png",
      twitter: "@ethan_munde",
      desc: "boss",
      email: "boss@ethan.munde",
      creations: [
        Art(
            imgUrl: "assets/images/create1.jpeg",
            name: "Consume",
            price: 1.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/create2.jpeg",
            name: "Consume",
            price: 3.94,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/create3.jpeg",
            name: "Consume",
            price: 2.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/create4.jpeg",
            name: "Consume",
            price: 0.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/create5.jpeg",
            name: "Consume",
            price: 5.54,
            desc: "so happy to share my creations"),
      ],
      collections: [
        Art(
            imgUrl: "assets/images/collection1.jpeg",
            name: "Consume",
            price: 1.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/collection2.jpeg",
            name: "Consume",
            price: 1.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/collection3.jpeg",
            name: "Consume",
            price: 1.54,
            desc: "so happy to share my creations"),
        Art(
            imgUrl: "assets/images/collection4.jpeg",
            name: "Consume",
            price: 1.54,
            desc: "so happy to share my creations"),
      ],
    );
  }
}
