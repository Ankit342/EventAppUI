import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Color(0x0F000000),
                borderRadius: BorderRadius.circular(16),
              ),
              child: TextFormField(
                cursorColor: Colors.black,
                style: TextStyle(fontSize: 20, color: Colors.grey),
                textAlignVertical: TextAlignVertical.top,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      color: Colors.black,
                      Icons.search,
                      size: 20,
                    ),
                    hintText: 'Search by event name',
                    hintStyle: TextStyle(fontSize: 20, color: Colors.grey)),
              ),
            ),
          ),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.send,
              color: Colors.black,
            ))
      ],
    );
  }
}
