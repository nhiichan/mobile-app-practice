import 'package:flutter/material.dart';

class CloudStorageInfo {
  final String fileType; // 'Document', 'Google Drive',...
  final int filesNumber;
  final double percentage;
  final String totalFileStorage;
  final Color color;
  final String svgSrc;

  const CloudStorageInfo({
    required this.fileType,
    required this.filesNumber,
    required this.percentage,
    required this.totalFileStorage,
    required this.color,
    required this.svgSrc,
  }); // source of image
}
