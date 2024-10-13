import 'package:soft_web/configs/assets.gen.dart';

enum BottomNavItems{
  home,services,statistics,referrals,settings
}

extension BottomNavExtension on BottomNavItems{
  String name(){
    switch(this){
      case BottomNavItems.home:
        return "Home";
      case BottomNavItems.settings:
        return "Settings";
      case BottomNavItems.services:
        return "Services";
      case BottomNavItems.statistics:
        return "Statistics";
      case BottomNavItems.referrals:
        return "Referrals";
    }
  }

  String icon(){
    switch(this){
      case BottomNavItems.home:
        return Assets.icons.house01.path;
      case BottomNavItems.settings:
        return Assets.icons.settings1.path;
      case BottomNavItems.services:
        return Assets.icons.moreGridBig.path;
      case BottomNavItems.statistics:
        return Assets.icons.arrowDownUp.path;
      case BottomNavItems.referrals:
        return Assets.icons.users.path;
    }
  }
}