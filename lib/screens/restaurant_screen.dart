import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_ui/models/restaurant.dart';
import 'package:flutter_food_delivery_ui/widgets/rating_stars.dart';

class RestaurantScreen extends StatefulWidget {
  final Restaurant restaurant;

  const RestaurantScreen({this.restaurant, Key key}) : super(key: key);

  @override
  State<RestaurantScreen> createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Hero(
                tag: widget.restaurant.imageUrl,
                child: Image(
                  height: 220.0,
                  width: MediaQuery.of(context).size.width,
                  image: AssetImage(widget.restaurant.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(
                        Icons.arrow_back_ios,
                      ),
                      color: Colors.white,
                      iconSize: 30.0,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                      ),
                      color: Theme.of(context).primaryColor,
                      iconSize: 35.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.restaurant.name,
                      style: TextStyle(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '0.2 miles away',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 4.0),
                RatingStars(widget.restaurant.rating),
                SizedBox(height: 6.0),
                Text(
                  widget.restaurant.address,
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(30.0, 30.0),
                  primary: Colors.grey[200],
                  padding: EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 6.0),
                  child: Text(
                    'Reviews',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                onPressed: () {},
              ),
              TextButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(30.0, 30.0),
                  primary: Colors.grey[200],
                  padding: EdgeInsets.all(0),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 6.0),
                  child: Text(
                    'Contact',
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}