

import 'package:ecommerceflutter/modal/add_banner.dart';
import 'package:ecommerceflutter/service/remote_service/remote_banner_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{
  static HomeController instance = Get.find();
  RxList<AddBanner> bannerList = List<AddBanner>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;

  @override
  void onInit() {
    getAddBanners();
    super.onInit();
  }

  void getAddBanners() async{
    try{
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if(result != false){
        bannerList.assignAll(adBannerListFromJson(result.body));
      }
    }finally{
      isBannerLoading(false);
    }
  }
}