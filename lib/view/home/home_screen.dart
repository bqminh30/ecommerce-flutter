import 'package:ecommerceflutter/component/main_header.dart';
import 'package:ecommerceflutter/controller/controllers.dart';
import 'package:ecommerceflutter/view/home/components/carousel_slider/carousel_loading.dart';
import 'package:ecommerceflutter/view/home/components/carousel_slider/carousel_slide_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          children: [
            const MainHeader(),
            Obx(() {
              if (homeController.bannerList.isNotEmpty) {
                return CarouselSlideView(
                    bannerList: homeController.bannerList
                );
              } else {
                return const CarouselLoading();
              }
            })
          ],
        ));
  }
}
