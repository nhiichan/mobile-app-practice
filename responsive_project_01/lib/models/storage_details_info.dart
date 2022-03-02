import 'package:flutter/material.dart';

class StorageDetailsInfo {
  final String fileType; // 'Document', 'Google Drive',...
  final int filesNumber;
  final String totalFileStorage;
  final Color color;
  final String svgSrc;

  const StorageDetailsInfo({
    required this.fileType,
    required this.filesNumber,
    required this.totalFileStorage,
    required this.color,
    required this.svgSrc,
  }); // source of image
}
