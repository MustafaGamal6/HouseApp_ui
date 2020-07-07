import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model {
  String info ='The arrangement and layout of the villa maximizes natural light , opening to elegant private balconis, which provide residents whit outdoor liverage agile framework to provide';

  String img;
  String name;
  String location;
  String option;
  int price;
  String ownername;
  double rate;


  Model({
    this.img,
    this.name,
    this.location,
    this.option,
    this.price,
    this.ownername,
    this.rate
    
  });
}

List itemlist = [
  Model(
    img: 'assets/images/house4.jpg',
    name: 'charmina Villa',
    location: 'West Garden',
    price: 235000,
    ownername: 'Jordan Smith',
    rate: 4.3
  ),
  Model(
    img: 'assets/images/house2.jpg',
    name: 'Double Farmer',
    location: 'North Garden',
    price: 340000,
    ownername: 'Hazel Wintson',
    rate: 4.1
  ),
  Model(
    img: 'assets/images/house3.jpg',
    name: 'charmina Villa',
    location: 'West Garden',
    price: 235000,
    ownername: 'Jordan Smith',
    rate: 4.9
  ),
  Model(
    img: 'assets/images/house5.jpg',
    name: 'Double Farmer',
    location: 'North Garden',
    price: 340000,
    ownername: 'Hazel Wintson',
    rate: 3.9
  ),
  Model(
    img: 'assets/images/house6.jpg',
    name: 'charmina Villa',
    location: 'West Garden',
    price: 235000,
    ownername: 'Jordan Smith',
    rate: 4.2
  ),
];

List<IconData> icons =[
  Icons.hotel,
  Icons.hot_tub,
  Icons.local_florist,
  Icons.time_to_leave
];

List iconscolor =[
  Colors.blue,
  Colors.pinkAccent,
  Colors.greenAccent,
  Colors.orangeAccent
];

List iconstags = [
  '3Bed',
  '2Bath', 
  'Garden',
  'Parking'
];
