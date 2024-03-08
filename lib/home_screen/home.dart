import 'package:get/get.dart';
import 'package:project_2/cart_screen/cart_screen.dart';
import 'package:project_2/category_screen/category_screen.dart';
import 'package:project_2/controllers/home_controller.dart';
import 'package:project_2/profile_screen/profile_screen.dart';

import '../consts/consts.dart';
import 'home_screen.dart';

class Home extends StatelessWidget {

  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    // Import Home Controller

    var controller = Get.put(HomeController());

    var navbarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome, width: 26,), label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(icCategories, width: 26,), label: "Categories"),
      BottomNavigationBarItem(icon: Image.asset(icCart, width: 26,), label: "Cart"),
      BottomNavigationBarItem(icon: Image.asset(icProfile, width: 26,), label: "Profile"),
    ];

    var navBody = [
      const HomeScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const ProfileScreen(),
    ];
    
    return Scaffold(
      body: Column(
        children: [
          Obx(() => Expanded(child: navBody.elementAt(controller.currentNavIndex.value),)),
        ],
      ),
      bottomNavigationBar: Obx(() =>
          BottomNavigationBar(items: navbarItem,
          backgroundColor: whiteColor,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: redColor,
          selectedLabelStyle: const TextStyle(fontFamily: semibold),
            currentIndex: controller.currentNavIndex.value,
            onTap: (value){
              controller.currentNavIndex.value = value;
            },
        ),
      ),
    );
  }
}
