import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/responsive.dart';
import 'package:responsive_project_01/resources/dummy_data.dart';
import 'package:responsive_project_01/widgets/file_info/cloud_file_info_card.dart';
import 'package:responsive_project_01/widgets/file_info/recent_files/recent_files.dart';

class FileInfo extends StatelessWidget {
  const FileInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _widthSize = MediaQuery.of(context).size.width;
    const cloudStorage = DUMMY_CLOUD_STORAGE;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // File Info Header
        const FileInfoHeader(),
        const SizedBox(
          height: defaultPadding,
        ),

        // Cloud Storage Info
        GridView.builder(
          shrinkWrap: true,
          itemCount: cloudStorage.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: _widthSize < 650 ? 2 : 4,
            childAspectRatio: _widthSize < 650 ? 1.5 : 1,
            // childAspectRatio: (itemWidth / itemHeight),
            mainAxisSpacing: defaultPadding,
            crossAxisSpacing: defaultPadding,
          ),
          itemBuilder: (context, index) => CloudFileInfoCard(
            info: cloudStorage[index],
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),

        // Recent Files
        const RecentFiles(),
      ],
    );
  }
}

class FileInfoHeader extends StatelessWidget {
  const FileInfoHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          flex: 5,
          child: Text(
            'My Files',
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        const Spacer(
          flex: 5,
        ),
        Expanded(
          flex: 3,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    defaultBorderRadius * 0.7,
                  ),
                ),
              ),
            ),
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Padding(
              padding: EdgeInsets.symmetric(
                vertical: defaultPadding * 0.7,
              ),
              child: Text(
                'Add New',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
