import 'package:get/get.dart';
import 'package:post_mobile_application/core/data/local/access_token_storage.dart';
import 'package:post_mobile_application/modules/admin/dashboard/models/menu.dart';
import 'package:post_mobile_application/routes/app_route_name.dart';

class DashboardController extends GetxController {
  var menuList = <Menu>[].obs;

  @override
  void onInit() {
    menuList.value = Menu.getAllMenus();
    super.onInit();
  }

  Future<void> logout() async {
    await AccessTokenStorage.clearTokens();

    Get.snackbar(
      'Logout',
      'You have logged out successfully',
    );

    Get.offAllNamed(AppRouteName.login);
  }
}