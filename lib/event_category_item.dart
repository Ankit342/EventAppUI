import 'package:flutter/material.dart';

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem({
    super.key,
    required this.text,
    required this.isActive,
    required this.isLast,
    required this.isFirst,
  });
  final String text;
  final bool isActive;
  final bool isLast;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: isLast
          ? EdgeInsets.only(right: 16)
          : EdgeInsets.only(left: isFirst ? 16 : 8),
      duration: Duration(milliseconds: 1000),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: isActive ? Color(0xFF214D42) : Colors.transparent,
      ),
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: isActive ? Color(0xFFD5DD6E) : Colors.black,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
