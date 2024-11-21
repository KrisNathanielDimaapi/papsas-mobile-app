import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appdev/view/navigation/navigation.controller.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: Obx(
        () => SizedBox(
          height: 75.0, // Adjust this value if needed
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildIconWithLabel(
                  icon: Icons.home,
                  label: 'Home',
                  isSelected: controller.selectedIndex.value == 0,
                  onPressed: () => controller.selectedIndex.value = 0,
                ),
                _buildCalendarIconWithLabel(
                  icon: Icons.calendar_month,
                  label: 'Events',
                  isSelected: controller.selectedIndex.value == 1,
                  onPressed: () => controller.selectedIndex.value = 1,
                  eventCount: 3,
                ),
                _buildNotificationIconWithLabel(
                  icon: Icons.notifications,
                  label: 'Notifications',
                  isSelected: controller.selectedIndex.value == 2,
                  onPressed: () => controller.selectedIndex.value = 2,
                  notificationCount: 5,
                ),
                _buildIconWithLabel(
                  icon: Icons.account_circle_rounded,
                  label: 'Profile',
                  isSelected: controller.selectedIndex.value == 3,
                  onPressed: () => controller.selectedIndex.value = 3,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Obx(() => controller.screen[controller.selectedIndex.value]),
    );
  }

  Widget _buildIconWithLabel({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected
                ? const Color.fromARGB(255, 255, 17, 0)
                : Colors.grey,
          ),
          const SizedBox(height: 4.0), // Space between icon and label
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 255, 17, 0)
                  : Colors.grey,
              fontSize: 12.0, // Adjust text size if needed
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationIconWithLabel({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
    required int notificationCount,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Icon(
                icon,
                color: isSelected
                    ? const Color.fromARGB(255, 255, 17, 0)
                    : Colors.grey,
              ),
              if (notificationCount > 0)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '$notificationCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4.0), // Space between icon and label
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 255, 17, 0)
                  : Colors.grey,
              fontSize: 12.0, // Adjust text size if needed
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalendarIconWithLabel({
    required IconData icon,
    required String label,
    required bool isSelected,
    required VoidCallback onPressed,
    required int eventCount,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Icon(
                icon,
                color: isSelected
                    ? const Color.fromARGB(255, 255, 17, 0)
                    : Colors.grey,
              ),
              if (eventCount > 0)
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: const BoxConstraints(
                      minWidth: 12,
                      minHeight: 12,
                    ),
                    child: Text(
                      '$eventCount',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
          const SizedBox(height: 4.0), // Space between icon and label
          Text(
            label,
            style: TextStyle(
              color: isSelected
                  ? const Color.fromARGB(255, 255, 17, 0)
                  : Colors.grey,
              fontSize: 12.0, // Adjust text size if needed
            ),
          ),
        ],
      ),
    );
  }
}
