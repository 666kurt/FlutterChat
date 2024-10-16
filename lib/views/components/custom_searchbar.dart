import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  CustomSearchBar({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Color.fromRGBO(247, 247, 252, 1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.search,
            color: Color.fromRGBO(173, 181, 189, 1),
            size: 24,
          ),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              autocorrect: false,
              decoration: InputDecoration(
                hintText: "Поиск",
                hintStyle: TextStyle(
                  color: Color.fromRGBO(173, 181, 189, 1),
                  fontWeight: FontWeight.w600,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
