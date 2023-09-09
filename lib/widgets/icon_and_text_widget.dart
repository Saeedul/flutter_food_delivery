import 'package:flutter/material.dart';
import 'package:flutter_food_delivery/utils/dimensions.dart';
import 'package:flutter_food_delivery/widgets/small_text.dart';

class IconAndTextWidget extends StatefulWidget {
  final IconData icon;
  final String text;
  final Color iconColor;

  const IconAndTextWidget({
    Key? key,
    required this.icon,
    required this.text,
    required this.iconColor,
  }) : super(key: key);

  @override
  State<IconAndTextWidget> createState() => _IconAndTextWidgetState();
}

class _IconAndTextWidgetState extends State<IconAndTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.icon, // Use widget.icon here
          color: widget.iconColor, // Use widget.iconColor here
          size: Dimensions.iconSize24,
        ),
        SizedBox(
          width: 5,
        ),
        SmallText(
          text: widget.text, // Use widget.text here
        ),
      ],
    );
  }
}
