import 'package:flutter/material.dart';

extension CleanCode on Widget {
  Widget css({
    double? p,
    double? pt,
    double? pr,
    double? pb,
    double? pl,
    double? m,
    double? mt,
    double? mr,
    double? mb,
    double? ml,
    dynamic c,
    Color? ct,
    double? r,
    double? s,
    double? e,
    onPressed,
    onLongPress,
    onFocusChange,
    onHover,
  }) {
    // Convert color string to Color object if necessary
    Color? backgroundColor = (c is String) ? _colorFromString(c) : c;
    Widget widget = this;

    // Apply padding
    widget = Padding(
      padding: p != null
          ? EdgeInsets.all(p)
          : EdgeInsets.only(
              top: pt ?? 0,
              right: pr ?? 0,
              bottom: pb ?? 0,
              left: pl ?? 0,
            ),
      child: this,
    );

    // Apply text color
    widget = DefaultTextStyle.merge(
      style: TextStyle(color: ct, fontSize: s ?? 12),
      child: widget,
    );

    // Apply button
    widget = ElevatedButton(
        onPressed: onPressed,
        onLongPress: onLongPress,
        onFocusChange: onFocusChange,
        onHover: onHover,
        style: ElevatedButton.styleFrom(
            elevation: e,
            // foregroundColor: ct,
            // backgroundColor: c,
            backgroundColor: Colors.transparent),
        child: widget);

    // Apply margin
    widget = Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: r != null ? BorderRadius.circular(r) : null,
      ),
      margin: m != null
          ? EdgeInsets.all(m)
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
