import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset(projectLogo),
              // drawer header sẽ có gạch chân ở bên dưới
            ),
            MenuListTile(
              svgSrc: menuDashboard,
              title: 'Dashboard',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuTx,
              title: 'Transaction',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuTask,
              title: 'Task',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuDoc,
              title: 'Documents',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuStore,
              title: 'Store',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuNotification,
              title: 'Notification',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuProfile,
              title: 'Profile',
              tapHandler: () {},
            ),
            MenuListTile(
              svgSrc: menuSettings,
              title: 'Settings',
              tapHandler: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class MenuListTile extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback tapHandler;

  const MenuListTile({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.tapHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 8.0,
      // The horizontal gap between the titles and the leading/trailing widgets.
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white54,
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Colors.white54,
        ),
      ),
      onTap: tapHandler,
    );
  }
}
