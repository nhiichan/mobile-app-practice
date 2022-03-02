import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/recent_file_info.dart';
import 'package:responsive_project_01/resources/dummy_data.dart';

class RecentFilesDetail extends StatelessWidget {
  const RecentFilesDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const recentFilesDetail = DUMMY_RECENT_FILES_DETAIL;
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding,
            horizontal: 2 * defaultPadding,
          ),
          child: Row(
            children: const [
              Expanded(
                flex: 1,
                child: Text(
                  'File Name',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Date',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Size',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: recentFilesDetail.length,
          itemBuilder: (context, index) => RecentFileListTile(
            fileInfo: recentFilesDetail[index],
          ),
        ),
      ],
    );
  }
}

class RecentFileListTile extends StatelessWidget {
  final RecentFileInfo fileInfo;
  const RecentFileListTile({
    Key? key,
    required this.fileInfo,
  }) : super(key: key);

  Color bgColor(statusCode) {
    switch (statusCode) {
      case 1: // hover
        return Colors.white12;
      default:
        return secondaryColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () {},
        // Phải có ontap thì cái transparent kia mới được kích hoạt
        child: Container(
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding / 2,
            horizontal: 2 * defaultPadding,
          ),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 1.0,
                color: Colors.white10,
              ),
            ),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          defaultBorderRadius,
                        ),
                      ),
                      child: SvgPicture.asset(fileInfo.svgSrc),
                    ),
                    const SizedBox(
                      width: defaultPadding,
                    ),
                    Text(
                      fileInfo.fileType,
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Text(fileInfo.date),
              ),
              Expanded(
                flex: 1,
                child: Text(fileInfo.size),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
