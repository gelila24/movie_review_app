import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/themes/app_theme.dart';
import 'package:movie_review_app/ui/controllers/home_controller.dart';

class CustomBottomNavigation extends StatelessWidget {
  CustomBottomNavigation({
    super.key,
  });
  final HomeController _homeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: Get.width / 3.5,
      color: AppTheme.darkGrey.withOpacity(0.85),
      padding: const EdgeInsets.symmetric(vertical: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              height: 45,
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      _homeController.changePage(index);
                    },
                    child: SizedBox(
                      width: Get.width / 3,
                      child: Obx(
                        () => Column(
                          children: [
                            Icon(
                              _homeController.bottomTabs.values
                                  .elementAt(index),
                              size: 25,
                              color: _homeController.currentIndex.value == index
                                  ? AppTheme.primaryColor
                                  : AppTheme.iconGrey,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              _homeController.bottomTabs.keys.elementAt(index),
                              style: AppTheme.normalWhite().copyWith(
                                fontSize: 12,
                                color:
                                    _homeController.currentIndex.value == index
                                        ? AppTheme.primaryColor
                                        : AppTheme.iconGrey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _homeController.bottomTabs.length,
                scrollDirection: Axis.horizontal,
                physics: const NeverScrollableScrollPhysics(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
