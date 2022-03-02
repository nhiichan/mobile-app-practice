import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/widgets/file_info/recent_files/recent_files_detail.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: defaultPadding,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(
          defaultBorderRadius,
        ),
      ),
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Recent Files',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          RecentFilesDetail(),
        ],
      ),
    );
  }
}
