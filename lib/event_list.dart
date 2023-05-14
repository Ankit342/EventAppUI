import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

import 'event_item.dart';
import 'model/mock.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: EventItem(
                event: events[index],
              ),
            ),
          );
        },
        separatorBuilder: ((context, index) {
          return Divider(
            indent: 16,
            endIndent: 16,
            color: Colors.black12,
          );
        }),
        itemCount: events.length);
  }
}
