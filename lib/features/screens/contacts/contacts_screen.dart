import 'package:flutter/material.dart';
import '../../components/components.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(
        title: "Контакты",
        icon: Icons.add,
        onTap: () {},
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: CustomSearchBar(),
      ),
    );
  }
}
