

import 'package:ecommerceflutter/controller/dashboard_controller.dart';
import 'package:get/get.dart';

class DashboardBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(DashboardController());
  }
}