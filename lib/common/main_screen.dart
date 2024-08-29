import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol/features/favourites/presentation/screens/favourite_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../features/categories/presentation/screen/categories_screen.dart';
import '../features/home/presentation/screen/home_screen.dart';
import '../features/user_profile/presentation/screen/user_profile.dart';
import '../resources/assets/app_assets.dart';
import '../resources/colors/color_palette.dart';

class MainScreen extends StatefulWidget {
  final int intialSection;
  const MainScreen({super.key, this.intialSection = 0});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late PersistentTabController _controller;
  final List<ScrollController> _scrollControllers = [
    ScrollController(),
    ScrollController(),
  ];

  final NavBarStyle _navBarStyle = NavBarStyle.style13;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: widget.intialSection);
    super.initState();
  }

  @override
  void dispose() {
    for (final element in _scrollControllers) {
      element.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PersistentTabView(
          context,
          resizeToAvoidBottomInset: true,
          navBarHeight: 70.h,
          controller: _controller,
          screens: const [
            HomeScreen(),
            FavouriteScreen(),
            CategoriesScreen(),
            UserProfile(),
          ],
          navBarStyle: _navBarStyle,
          items: [
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: SvgPicture.asset(
                AppAssets.homeicon,
                colorFilter: const ColorFilter.mode(
                    ColorPalette.primary, BlendMode.srcIn),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorPalette.black, // Example color
                        width: 3.0, // Example width
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    AppAssets.homeicon,
                    colorFilter: const ColorFilter.mode(
                        ColorPalette.black, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: const Icon(
                Icons.favorite_outline,
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: ColorPalette.black, // Example color
                          width: 3.0, // Example width
                        ),
                      ),
                    ),
                    child: const Icon(Icons.favorite_outline)),
              ),
            ),
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: SvgPicture.asset(
                AppAssets.categories,
                colorFilter: const ColorFilter.mode(
                    ColorPalette.primary, BlendMode.srcIn),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorPalette.black, // Example color
                        width: 3.0, // Example width
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    AppAssets.categories,
                    colorFilter: const ColorFilter.mode(
                        ColorPalette.black, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter: const ColorFilter.mode(
                    ColorPalette.primary, BlendMode.srcIn),
              ),
              icon: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 12.h,
                ),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        color: ColorPalette.black, // Example color
                        width: 3.0, // Example width
                      ),
                    ),
                  ),
                  child: SvgPicture.asset(
                    AppAssets.profile,
                    colorFilter: const ColorFilter.mode(
                        ColorPalette.black, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
