import 'event.dart';
import 'package:flutter/material.dart';
import 'event.dart';

class EventItem extends StatelessWidget {
  const EventItem({super.key, required this.event});
  final Event event;
  String? get _date {
    if (event.endDate?.isNotEmpty ?? false) {
      return '${event.startDate}- ${event.endDate}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: SizedBox(
            width: 70,
            child: AspectRatio(
              aspectRatio: 0.6,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  event.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _date!,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Text(
                event.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                (event.location == null) ? event.location : "Online",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 16.0, left: 8.0),
          child: Column(
            children: [
              Text(
                event.cost == '0' ? 'free' : '${event.cost}\$',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                event.discountCost == null ? 'free' : '${event.discountCost}\$',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
