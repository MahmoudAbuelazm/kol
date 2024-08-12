import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kol/resources/assets/app_assets.dart';
import 'package:kol/resources/colors/color_palette.dart';

class CustomNavigationBar extends StatelessWidget {
  /// Index of Currently Selected Item
  final int selectedIndex;

  /// The call back function for pressing on a navigation item
  final Function(int) onDestinationSelected;

  const CustomNavigationBar(
      {super.key,
      required this.selectedIndex,
      required this.onDestinationSelected});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        // sets the background color of the `BottomNavigationBar`
        canvasColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      ),
      child: BottomNavigationBar(
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        items: [
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
            ),
            icon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.primary, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
            ),
            icon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.primary, BlendMode.srcIn),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            activeIcon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.black, BlendMode.srcIn),
            ),
            icon: SvgPicture.asset(
              AppAssets.homeicon,
              colorFilter:
                  const ColorFilter.mode(ColorPalette.primary, BlendMode.srcIn),
            ),
            label: '',
          ),
          // BottomNavigationBarItem(
          //   activeIcon: Iconify(
          //     Heroicons.user_group_20_solid,
          //     size: 35,
          //     color:
          //         Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //   ),
          //   icon: const Iconify(
          //     Heroicons.user_group_20_solid,
          //     size: 35,
          //     color: Colors.white,
          //   ),
          //   label: '',
          // ),
          // BottomNavigationBarItem(
          //   activeIcon: Iconify(
          //     Ps.plus_box,
          //     color:
          //         Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //     size: 35,
          //   ),
          //   icon: const Iconify(
          //     Ps.plus_box,
          //     color: Colors.white,
          //     size: 35,
          //   ),
          //   label: '',
          // ),
          // BottomNavigationBarItem(
          //   activeIcon: Iconify(
          //     Carbon.user_avatar_filled_alt,
          //     color:
          //         Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //     size: 35,
          //   ),
          //   icon: const Iconify(
          //     Carbon.user_avatar_filled_alt,
          //     color: Colors.white,
          //     size: 35,
          //   ),
          //   label: '',
          // ),
          // BottomNavigationBarItem(
          //   activeIcon: Iconify(
          //     IconParkOutline.setting_config,
          //     color:
          //         Theme.of(context).bottomNavigationBarTheme.selectedItemColor,
          //     size: 35,
          //   ),
          //   icon: const Iconify(
          //     IconParkOutline.setting_config,
          //     color: Colors.white,
          //     size: 35,
          //   ),
          //   label: '',
          // ),
        ],
        currentIndex: selectedIndex,
        onTap: onDestinationSelected,

        // selectedIndex: selectedIndex,
        // onDestinationSelected: onDestinationSelected,
        // destinations: <NavigationDestination>[

        //   // NavigationDestination(
        //   //   selectedIcon: Icon(Icons.electrical_services),
        //   //   icon: Icon(Icons.electrical_services_outlined),
        //   //   label: (AppLocalizations.of(context)!.connectData),
        //   // ),

        // ],
      ),
    );
  }
}
