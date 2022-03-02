import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/resources/dummy_data.dart';
import 'package:responsive_project_01/widgets/storage_details/storage_details_chart.dart';
import 'package:responsive_project_01/widgets/storage_details/storage_info_tile.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List storageDetailsList = DUMMY_STORAGE_DETAILS;
    return Container(
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.circular(
          defaultBorderRadius,
        ),
      ),
      padding: const EdgeInsets.all(
        defaultPadding,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // header
          const Text(
            'Storage Details',
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),

          // Chart
          const StorageDetailsChart(),
          const SizedBox(
            height: defaultPadding,
          ),

          // List Storage Info
          ListView.builder(
            shrinkWrap: true,
            itemCount: storageDetailsList.length,
            itemBuilder: (context, index) => Column(
              children: [
                StorageInfoTile(info: storageDetailsList[index]),
                const SizedBox(
                  height: defaultPadding,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
