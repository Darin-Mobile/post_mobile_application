import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/modules/home/controller/home_controller.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';
import 'package:post_mobile_application/widgets/appbar_custom_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.cyan,
        child: ListView(
          children: [
            SizedBox(
              height: 150,
            ),
            ListTile(
              onTap: (){
                Navigator.pop(context);
                Get.toNamed(AppRouteName.adminDashboard);
              },
              leading: Icon(Icons.dashboard, color: Colors.white,),
              title: Text("Dashboard", style: TextStyle(color: Colors.white),),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppbarCustomWidget(
        title: "Home",
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            tooltip: 'Logout',
            onPressed: () {
              Get.defaultDialog(
                title: 'Logout',
                middleText: 'Do you want to logout?',
                textCancel: 'Cancel',
                textConfirm: 'Logout',
                confirmTextColor: Colors.white,
                onConfirm: () {
                  Get.back();
                  controller.logout();
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
