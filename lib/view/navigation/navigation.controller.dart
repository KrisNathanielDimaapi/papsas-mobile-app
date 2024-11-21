import 'package:appdev/view/event/event.dart';
import 'package:appdev/view/notification/notification.dart';
import 'package:appdev/view/profile/profile.dart';
import 'package:get/get.dart';
import 'package:appdev/view/home/home.dart';

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screen = [
    const HomePage(),
    const MyHomePage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
}
