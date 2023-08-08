// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerWidget extends StatelessWidget {
  double radius;
  Color color;
  EdgeInsetsGeometry padding;
  EdgeInsetsGeometry? margin;
  Widget child;
  double height;
  double width;
  bool border;

  ContainerWidget({
    Key? key,
    required this.radius,
    required this.color,
    required this.padding,
    this.margin,
    required this.child,
    required this.height,
    required this.width,
    required this.border,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: padding,
        height: height,
        margin: margin,
        width: width,
        decoration: BoxDecoration(
            color: color,
            border: border
                ? Border.all(
                    color: Theme.of(context).canvasColor,
                    width: 2,
                  )
                : null,
            borderRadius: BorderRadius.circular(radius)),
        child: child);
  }
}
