import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  final String title;
  final IconData icon;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromRGBO(41, 24, 59, 1),
              fontWeight: FontWeight.w600,
              fontSize: 18,
            ),
          ),
          Spacer(),
          GestureDetector(
            onTap: onTap,
            child: Icon(
              icon,
              color: Color.fromRGBO(41, 24, 59, 1),
              size: 24,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
