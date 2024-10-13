/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Arrow_Down_Up.svg
  SvgGenImage get arrowDownUp =>
      const SvgGenImage('assets/icons/Arrow_Down_Up.svg');

  /// File path: assets/icons/Chat_Conversation_Circle.svg
  SvgGenImage get chatConversationCircle =>
      const SvgGenImage('assets/icons/Chat_Conversation_Circle.svg');

  /// File path: assets/icons/Credit_Card_01.svg
  SvgGenImage get creditCard01 =>
      const SvgGenImage('assets/icons/Credit_Card_01.svg');

  /// File path: assets/icons/Group 1.png
  AssetGenImage get group1 => const AssetGenImage('assets/icons/Group 1.png');

  /// File path: assets/icons/House_01.svg
  SvgGenImage get house01 => const SvgGenImage('assets/icons/House_01.svg');

  /// File path: assets/icons/More_Grid_Big.svg
  SvgGenImage get moreGridBig =>
      const SvgGenImage('assets/icons/More_Grid_Big.svg');

  /// File path: assets/icons/Notification.svg
  SvgGenImage get notification =>
      const SvgGenImage('assets/icons/Notification.svg');

  /// File path: assets/icons/Plus.svg
  SvgGenImage get plus => const SvgGenImage('assets/icons/Plus.svg');

  /// File path: assets/icons/Rectangle 32.png
  AssetGenImage get rectangle32 =>
      const AssetGenImage('assets/icons/Rectangle 32.png');

  /// File path: assets/icons/Send.svg
  SvgGenImage get send => const SvgGenImage('assets/icons/Send.svg');

  /// File path: assets/icons/Settings-1.svg
  SvgGenImage get settings1 => const SvgGenImage('assets/icons/Settings-1.svg');

  /// File path: assets/icons/User_01.svg
  SvgGenImage get user01 => const SvgGenImage('assets/icons/User_01.svg');

  /// File path: assets/icons/chips.svg
  SvgGenImage get chips => const SvgGenImage('assets/icons/chips.svg');

  /// File path: assets/icons/clock (2) 1.svg
  SvgGenImage get clock21 => const SvgGenImage('assets/icons/clock (2) 1.svg');

  /// File path: assets/icons/credit-card.svg
  SvgGenImage get creditCard =>
      const SvgGenImage('assets/icons/credit-card.svg');

  /// File path: assets/icons/data.svg
  SvgGenImage get data => const SvgGenImage('assets/icons/data.svg');

  /// File path: assets/icons/password.svg
  SvgGenImage get password => const SvgGenImage('assets/icons/password.svg');

  /// File path: assets/icons/restore.svg
  SvgGenImage get restore => const SvgGenImage('assets/icons/restore.svg');

  /// File path: assets/icons/showmax.svg
  SvgGenImage get showmax => const SvgGenImage('assets/icons/showmax.svg');

  /// File path: assets/icons/subscriptions.svg
  SvgGenImage get subscriptions =>
      const SvgGenImage('assets/icons/subscriptions.svg');

  /// File path: assets/icons/users.svg
  SvgGenImage get users => const SvgGenImage('assets/icons/users.svg');

  /// List of all assets
  List<dynamic> get values => [
        arrowDownUp,
        chatConversationCircle,
        creditCard01,
        group1,
        house01,
        moreGridBig,
        notification,
        plus,
        rectangle32,
        send,
        settings1,
        user01,
        chips,
        clock21,
        creditCard,
        data,
        password,
        restore,
        showmax,
        subscriptions,
        users
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
