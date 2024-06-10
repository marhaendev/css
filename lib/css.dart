import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

extension CleanCode on Widget {
  Widget css({
    // padding
    double? w,
    double? h,
    // padding
    double? p,
    double? px,
    double? py,
    double? pt,
    double? pr,
    double? pb,
    double? pl,
    // margin
    double? m,
    double? mx,
    double? my,
    double? mt,
    double? mr,
    double? mb,
    double? ml,
    // colors
    dynamic cb,
    dynamic ct,
    // radius
    double? r,
    // fonts
    double? fontSize,
    String? fontFamily,
    dynamic fontWeight,
    // events
    onPressed,
    onLongPress,
    onFocusChange,
    onHover,
    // icon
    Icon? icon,
    // borders
    dynamic borderColor,
    double? borderWidth,
    double? e,
  }) {
    Color? _cb = (cb is String) ? _colorFromString(cb) : cb;
    Color? _ct = (ct is String) ? _colorFromString(ct) : ct;
    Color? _borderColor =
        (borderColor is String) ? _colorFromString(borderColor) : borderColor;

    Widget widget = this;

    // Apply text
    widget = DefaultTextStyle.merge(
      style: GoogleFonts.getFont(fontFamily ?? 'Poppins').merge(
        TextStyle(
            color: ct,
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.normal),
      ),
      child: widget,
    );

    // Apply ElevatedButton
    widget = ElevatedButton.icon(
      onPressed: onPressed ?? null,
      onLongPress: onLongPress,
      onHover: onHover ?? (bool) {},
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return _ct ?? Colors.black;
            }
            return _ct ?? Colors.black;
          },
        ),
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return _cb ?? Colors.white;
            }
            return _cb ?? Colors.white;
          },
        ),
        shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.disabled)) {
              return RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(r ?? 0),
                side: BorderSide(
                    color: _borderColor ?? Colors.transparent,
                    width: borderWidth ?? 0),
              );
            }
            return RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(r ?? 0),
              side: BorderSide(
                  color: _borderColor ?? Colors.transparent,
                  width: borderWidth ?? 0),
            );
          },
        ),
      ),
      icon: icon ?? Container(),
      label: widget,
    );

    // Apply padding and margin
    widget = Container(
      width: w,
      height: h,
      padding: p != null
          ? EdgeInsets.all(p)
          : px != null
              ? EdgeInsets.symmetric(horizontal: px)
              : py != null
                  ? EdgeInsets.symmetric(vertical: py)
                  : EdgeInsets.only(
                      top: pt ?? 0,
                      right: pr ?? 0,
                      bottom: pb ?? 0,
                      left: pl ?? 0,
                    ),
      margin: m != null
          ? EdgeInsets.all(m)
          : mx != null
              ? EdgeInsets.symmetric(horizontal: mx)
              : my != null
                  ? EdgeInsets.symmetric(vertical: my)
                  : EdgeInsets.only(
                      top: mt ?? 0,
                      right: mr ?? 0,
                      bottom: mb ?? 0,
                      left: ml ?? 0,
                    ),
      child: widget,
    );

    return widget;
  }

  Color? _colorFromString(String colorString) {
    switch (colorString.toLowerCase()) {
      case 'red':
        return Colors.red;
      case 'blue':
        return Colors.blue;
      case 'green':
        return Colors.green;
      case 'yellow':
        return Colors.yellow;
      case 'black':
        return Colors.black;
      case 'white':
        return Colors.white;
      case 'grey':
        return Colors.grey;
      case 'teal':
        return Colors.teal;
      default:
        return null;
    }
  }
}
