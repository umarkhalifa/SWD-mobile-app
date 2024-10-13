import 'package:soft_web/configs/assets.gen.dart';

enum QuickActions{
  data,airtime,showmax,giftCard,betting,electricity,tv,ePin
}
extension QuickActionsExtension on QuickActions{
  String name(){
    switch(this){
      case QuickActions.data:
        return "Data";
      case QuickActions.airtime:
        return "Airtime";
      case QuickActions.showmax:
        return "Showmax";
      case QuickActions.giftCard:
        return "Giftcard";
      case QuickActions.betting:
        return "Betting";
      case QuickActions.electricity:
        return "Electricity";
      case QuickActions.tv:
        return "Tv/Cable";
      case QuickActions.ePin:
        return "E-pin";
    }
  }
  String icon(){
    switch(this){
      case QuickActions.data:
        return Assets.icons.data.path;
      case QuickActions.airtime:
        return Assets.icons.creditCard.path;
      case QuickActions.showmax:
        return Assets.icons.showmax.path;
      case QuickActions.giftCard:
        return Assets.icons.creditCard01.path;
      case QuickActions.betting:
        return Assets.icons.chips.path;
      case QuickActions.electricity:
        return Assets.icons.restore.path;
      case QuickActions.tv:
        return Assets.icons.subscriptions.path;
      case QuickActions.ePin:
        return Assets.icons.password.path;
    }
  }
}