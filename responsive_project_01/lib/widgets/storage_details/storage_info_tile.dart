import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/storage_details_info.dart';

class StorageInfoTile extends StatelessWidget {
  final StorageDetailsInfo info;
  const StorageInfoTile({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        defaultPadding,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          defaultBorderRadius + 5,
        ),
        border: Border.all(
          color: primaryColor.withOpacity(0.2),
          width: 2.0,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  height: 20,
                  width: 20,
                  child: SvgPicture.asset(info.svgSrc),
                ),
                const SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  // Cần expanded để có thể dùng được overflow!
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        info.fileType,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${info.filesNumber} Files',
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: defaultPadding,
          ),
          Text(
            info.totalFileStorage,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }
}
