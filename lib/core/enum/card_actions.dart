import 'package:soft_web/configs/assets.gen.dart';

enum CardActions{topUp,transfer,history}
extension CardActionsExtension on CardActions{
  String name(){
    switch(this){
      case CardActions.topUp:
        return "Top up";
      case CardActions.transfer:
        return "Transfer";
      case CardActions.history:
        return "History";
    }
  }
  String icon(){
    switch(this){
      case CardActions.topUp:
        return Assets.icons.plus.path;
      case CardActions.transfer:
        return Assets.icons.send.path;
      case CardActions.history:
        return Assets.icons.clock21.path;
    }
  }
}