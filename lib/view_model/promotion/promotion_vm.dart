import 'package:flutter/material.dart';

import '../../model/promotion/promotion.dart';

class PromotionViewModel{

  List<Promotion>? listPromo = [];

  List<Promotion>? getListPromo(){
    listPromo?.add(Promotion(title: "Monday Member Day", subTitle: "Khusus hari senin dapatkan promo beli satu gratis satu", imagePath: "promo01.jpg"));
    listPromo?.add(Promotion(title: "Monday Member Day", subTitle: "Khusus hari senin dapatkan promo beli satu gratis satu", imagePath: "promo02.jpg"));
    listPromo?.add(Promotion(title: "Monday Member Day", subTitle: "Khusus hari senin dapatkan promo beli satu gratis satu", imagePath: "promo03.jpg"));
    listPromo?.add(Promotion(title: "Monday Member Day", subTitle: "Khusus hari senin dapatkan promo beli satu gratis satu", imagePath: "promo04.jpg"));
    listPromo?.add(Promotion(title: "Monday Member Day", subTitle: "Khusus hari senin dapatkan promo beli satu gratis satu", imagePath: "promo05.jpg"));
    return listPromo;
  }

}