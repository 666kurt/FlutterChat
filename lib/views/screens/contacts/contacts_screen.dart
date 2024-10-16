import 'package:flutter/material.dart';
import 'package:flutter_chat/controllers/contact_controller.dart';
import '../../../models/user.dart';
import '../../components/components.dart';

final class ContactsScreen extends StatelessWidget {
  final ContactController _contactController = ContactController();
  final List<User> _users = ContactController.users;

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
        child: Column(
          children: [
            CustomSearchBar(),
            Expanded(
              child: ListView.separated(
                itemCount: _users.length,
                separatorBuilder: ((context, index) => Divider(
                      color: Color.fromRGBO(237, 237, 237, 1),
                    )),
                itemBuilder: (context, index) {
                  final User user = _users[index];
                  return Container(
                    padding: EdgeInsets.only(top: 10, bottom: 8),
                    child: Row(
                      children: [
                        Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.grey.shade300,
                          ),
                        ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(user.name),
                            Text(user.status),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
