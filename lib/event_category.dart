import 'package:flutter/material.dart';

import 'event_category_item.dart';
import 'model/mock.dart';

class EventCategory extends StatelessWidget {
  const EventCategory({
    super.key,
    required this.activeCategory,
  });
  final String activeCategory;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return EventCategoryItem(
            isActive: categories[index] == activeCategory,
            text: categories[index],
            isFirst: index == 0,
            isLast: index == categories.length - 1,
          );
        },
      ),
    );
  }
}
