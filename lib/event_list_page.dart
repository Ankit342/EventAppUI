import 'package:flutter/material.dart';
import 'package:flutter_application_6/event_list.dart';

import 'event_category.dart';
import 'search_box.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: const CircleAvatar(
              child: FlutterLogo(),
              backgroundColor: Colors.purple,
            ),
          ),
          title: Text(
            "Hi Ankit,",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                color: Colors.black,
                Icons.add_alert_rounded,
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 8.0),
          child: Column(
            children: const [
              SearchBox(),
              SizedBox(
                height: 16,
              ),
              EventCategory(
                activeCategory: 'all',
              ),
              SizedBox(
                height: 16,
              ),
              Expanded(child: EventList()),
            ],
          ),
        ));
  }
}
