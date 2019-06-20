import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class BookWidget extends StatelessWidget {
  double _cardHeight = 280;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _cardHeight,
      margin: const EdgeInsets.only(bottom: 16.0, right: 16.0),
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 220,
              height: _cardHeight,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(12),
                ),
                child: Image.network(
                  "https://images-na.ssl-images-amazon.com/images/I/51x3RhoBXiL.jpg",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              height: 180,
              margin: const EdgeInsets.only(left: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 25,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Book Title",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                    ),
                    Text(
                      "Book Author",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 12),
                    ),
                    // rating
                    SmoothStarRating(
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
