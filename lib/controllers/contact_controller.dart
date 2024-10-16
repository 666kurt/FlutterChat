import '../models/user.dart';

final class ContactController {
  // Моковые данные для заполнения списка
  static final List<User> users = [
    User(
      name: "Иван Иванов",
      status: "Last seen 3 hours ago",
      image: "",
      haveStories: true,
    ),
    User(
      name: "Петр Иванов",
      status: "Last seen 30 minutes ago",
      image: "",
      haveStories: false,
    ),
    User(
      name: "Гриша Иванов",
      status: "online",
      image: "",
      haveStories: false,
    ),
    User(
      name: "Анна Иванова",
      status: "online",
      image: "",
      haveStories: true,
    ),
    User(
      name: "Анна Иванова",
      status: "online",
      image: "",
      haveStories: true,
    ),
    User(
      name: "Анна Иванова",
      status: "online",
      image: "",
      haveStories: true,
    ),
    User(
      name: "Анна Иванова",
      status: "online",
      image: "",
      haveStories: true,
    ),
  ];
}
