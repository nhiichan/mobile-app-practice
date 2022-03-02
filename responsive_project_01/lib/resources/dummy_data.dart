// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:responsive_project_01/constants/assets.dart';
import 'package:responsive_project_01/models/cloud_storage_info.dart';
import 'package:responsive_project_01/models/recent_file_info.dart';
import 'package:responsive_project_01/models/storage_details_info.dart';

const List DUMMY_STORAGE_DETAILS = [
  StorageDetailsInfo(
    fileType: "Documents Files",
    filesNumber: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalFileStorage: "1.3GB",
    color: primaryColor,
  ),
  StorageDetailsInfo(
    fileType: "Media Files",
    filesNumber: 1328,
    svgSrc: "assets/icons/media.svg",
    totalFileStorage: "15.3GB",
    color: primaryColor,
  ),
  StorageDetailsInfo(
    fileType: "Other Files",
    filesNumber: 1328,
    svgSrc: "assets/icons/folder.svg",
    totalFileStorage: "1.3GB",
    color: primaryColor,
  ),
  StorageDetailsInfo(
    fileType: "Unknown",
    filesNumber: 140,
    svgSrc: "assets/icons/unknown.svg",
    totalFileStorage: "1.3GB",
    color: primaryColor,
  ),
];

const List DUMMY_CLOUD_STORAGE = [
  CloudStorageInfo(
    fileType: "Documents",
    filesNumber: 1328,
    svgSrc: "assets/icons/Documents.svg",
    totalFileStorage: "1.9GB",
    color: primaryColor,
    percentage: 35,
  ),
  CloudStorageInfo(
    fileType: "Google Drive",
    filesNumber: 1328,
    svgSrc: "assets/icons/google_drive.svg",
    totalFileStorage: "2.9GB",
    color: Color(0xFFFFA113),
    percentage: 35,
  ),
  CloudStorageInfo(
    fileType: "One Drive",
    filesNumber: 1328,
    svgSrc: "assets/icons/one_drive.svg",
    totalFileStorage: "1GB",
    color: Color(0xFFA4CDFF),
    percentage: 10,
  ),
  CloudStorageInfo(
    fileType: "Documents",
    filesNumber: 5328,
    svgSrc: "assets/icons/drop_box.svg",
    totalFileStorage: "7.3GB",
    color: Color(0xFF007EE5),
    percentage: 78,
  ),
];

const List DUMMY_RECENT_FILES_DETAIL = [
  RecentFileInfo(
    svgSrc: "assets/icons/xd_file.svg",
    fileType: "XD File",
    date: "01-03-2021",
    size: "3.5mb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/Figma_file.svg",
    fileType: "Figma File",
    date: "27-02-2021",
    size: "19.0mb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/doc_file.svg",
    fileType: "Documetns",
    date: "23-02-2021",
    size: "32.5mb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/sound_file.svg",
    fileType: "Sound File",
    date: "21-02-2021",
    size: "3.5mb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/media_file.svg",
    fileType: "Media File",
    date: "23-02-2021",
    size: "2.5gb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/pdf_file.svg",
    fileType: "Sals PDF",
    date: "25-02-2021",
    size: "3.5mb",
  ),
  RecentFileInfo(
    svgSrc: "assets/icons/excle_file.svg",
    fileType: "Excel File",
    date: "25-02-2021",
    size: "34.5mb",
  ),
];
