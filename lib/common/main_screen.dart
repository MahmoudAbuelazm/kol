import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol/common/navigation_bar.dart';
import 'package:kol/features/favourites/presentation/screens/favourite_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

import '../features/categories/presentation/screen/categories_screen.dart';
import '../features/home/presentation/screen/home_screen.dart';
import '../resources/assets/app_assets.dart';
import '../resources/colors/color_palette.dart';

class MainScreen extends StatefulWidget {
  final int intialSection;
  const MainScreen({super.key, this.intialSection = 0});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentSection = 0;
  late PersistentTabController _controller;
  late bool _hideNavBar;
  final List<ScrollController> _scrollControllers = [
    ScrollController(),
    ScrollController(),
  ];

  final NavBarStyle _navBarStyle = NavBarStyle.style13;
  @override
  void initState() {
    _controller = PersistentTabController(initialIndex: 1);
    _hideNavBar = false;
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
          isVisible: !_hideNavBar,
          controller: _controller,
          screens: const [
            HomeScreen(),
            FavouriteScreen(),
            CategoriesScreen(),
            HomeScreen(),
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
              icon: SvgPicture.asset(
                AppAssets.homeicon,
                colorFilter:
                    const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
              ),
            ),
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: const Icon(
                Icons.favorite_outline,
              ),
              icon: const Icon(Icons.favorite_outline),
            ),
            PersistentBottomNavBarItem(
              activeColorPrimary: ColorPalette.black,
              inactiveColorPrimary: ColorPalette.primary,
              inactiveIcon: SvgPicture.asset(
                AppAssets.categories,
                colorFilter: const ColorFilter.mode(
                    ColorPalette.primary, BlendMode.srcIn),
              ),
              icon: SvgPicture.asset(
                AppAssets.categories,
                colorFilter:
                    const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
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
              icon: SvgPicture.asset(
                AppAssets.profile,
                colorFilter:
                    const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
