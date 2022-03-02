import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/responsive.dart';
import 'package:responsive_project_01/widgets/file_info/file_info.dart';
import 'package:responsive_project_01/widgets/header.dart';
import 'package:responsive_project_01/widgets/side_menu.dart';
import 'package:responsive_project_01/widgets/storage_details/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final currentWidth = MediaQuery.of(context).size.width;
    // print(currentWidth);
    return Scaffold(
      drawer: const Drawer(
        child: SideMenu(),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              const Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Header
                    const Header(),
                    // Files and Storage Details

                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: defaultPadding),
                        // Files
                        const Expanded(
                          flex: 5,
                          child: FileInfo(),
                        ),

                        // Storage
                        const SizedBox(width: defaultPadding),
                        if (!Responsive.isMobile(context))
                          const Expanded(
                            flex: 2,
                            child: StorageDetails(),
                          ),
                        if (!Responsive.isMobile(context))
                          const SizedBox(width: defaultPadding),
                      ],
                    ),
                    if (Responsive.isMobile(context))
                      const Padding(
                        padding: EdgeInsets.only(
                          left: defaultPadding,
                          right: defaultPadding,
                          bottom: defaultPadding,
                        ),
                        child: StorageDetails(),
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
