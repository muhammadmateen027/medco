import 'package:flutter/material.dart';

extension UiExtensions on Widget {
  Padding addPaddingWithDesign() {
    return Padding(
      padding: EdgeInsets.only(right: 2.0, left: 2.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Color.fromRGBO(0, 0, 0, 0.1)),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: this,
      ),
    );
  }

  Container addRowPadding() {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 8.0,
          top: 4.0,
          right: 8.0,
          bottom: 0.0,
        ),
        child: this,
      ),
    );
  }

  Container roundedCorner({
    Color backGroundColor = Colors.transparent,
    Color borderColor = Colors.black38,
    List<BoxShadow>? boxShadow,
    double verticalPadding = 8.0,
    double horizontalPadding = 8.0,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: backGroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: boxShadow,
      ),
      child: this,
    );
  }

  Container dropDownContainer({
    Color backGroundColor = Colors.transparent,
    Color borderColor = Colors.black38,
    List<BoxShadow>? boxShadow,
    double verticalPadding = 8.0,
    double horizontalPadding = 8.0,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      decoration: BoxDecoration(
        color: backGroundColor,
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: boxShadow,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 5,
            child: this,
          ),
          Flexible(flex: 1, child: Icon(Icons.arrow_drop_down))
        ],
      ),
    );
  }

  SizedBox bottomSheetBackground() {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: new BorderRadius.only(
            topLeft: const Radius.circular(8.0),
            topRight: const Radius.circular(8.0),
          ),
          color: Colors.white,
        ),
        child: this,
      ),
    );
  }
}
