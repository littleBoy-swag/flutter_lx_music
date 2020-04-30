import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {

  static void showToast(String msg) {
    Fluttertoast.showToast(msg: msg);
  }

  static Widget loadImg(String url,
      {double width, double height, BoxFit boxFit}) {
    return Image(
      image: ExtendedNetworkImageProvider(url, cache: true),
      width: width,
      height: height,
      fit: boxFit,
    );
  }

}
