import 'package:flutter/material.dart';

double iconsize =30.0;
CarList carList = CarList(
    cars: [
      Car(companyName: "Chevrolet", cartName: "Corvette", price: 2100,
          imgList: [
        "fefe.png",
        "ferra.png",
        "lambo.png",
        "peugo.png",
      ],
          offerDetails: [
  {Icon(Icons.bluetooth, size: iconsize,):"Automatic"},
  {Icon(Icons.airline_seat_individual_suite, size: iconsize,):"4 sièges"},
  {Icon(Icons.pin_drop, size: iconsize,):"6.4"},
  {Icon(Icons.shutter_speed, size: iconsize,):"SHP"},
  {Icon(Icons.invert_colors, size: iconsize,):"Automatic"},
          ], features: [
            {Icon(Icons.bluetooth, size: iconsize,):"Automatic"},
            {Icon(Icons.usb, size: iconsize,):"4 sièges"},
            {Icon(Icons.power_settings_new, size: iconsize,):"6.4"},
            {Icon(Icons.android, size: iconsize,):"SHP"},
            {Icon(Icons.ac_unit, size: iconsize,):"Automatic"},
          ], specifications: [
          {Icon(Icons.av_timer, size: iconsize,):{"Milegp(upto)":"14.2 kmpl"}},
          {Icon(Icons.power, size: iconsize,):{"Milegp(upto)":"14.2 kmpl"}},
          {Icon(Icons.assignment_late, size: iconsize,):{"Milegp(upto)":"14.2 kmpl"}},
          {Icon(Icons.account_balance_wallet, size: iconsize,):{"Milegp(upto)":"14.2 kmpl"}},
          {Icon(Icons.cached, size: iconsize,):{"Milegp(upto)":"14.2 kmpl"}},
        ],)
    ]
);

class CarList{
  List<Car> cars;

  CarList({
    @required this.cars,
});
}

class Car {
  String companyName;
  String cartName;
  int price;
  List<String> imgList;
  List<Map<Icon, String>> offerDetails;
  List<Map<Icon, String>> features;
  List<Map<Icon, Map<String, String>>> specifications;
  Car(
  {
    @required this.companyName,
    @required this.cartName,
    @required this.price,
    @required this.imgList,
    @required this.offerDetails,
    @required this.features,
    @required this.specifications,

}
      );

}