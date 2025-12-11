import 'package:cure_team_1/core/utils/assets.dart';
import 'package:flutter/material.dart';

Widget? getimage(int index,List<int >activeStar) {
    for(var item in activeStar)
    {
      if(index==item)return Image.asset(Assets.resourceImagesActiveStar);
     
    }
    return  Image.asset(Assets.resourceImagesInActiveStar);
  
}