import 'package:flutter/material.dart';
import 'dart:ui_web' as ui_web;
import 'dart:ui' as ui;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomImageLoader extends StatelessWidget {
  const CustomImageLoader({
    super.key,
    required this.imageUrl,
    this.width = double.infinity,
    this.height = 250,
    this.fit = BoxFit.cover,
    this.errorWidget = const Icon(Icons.error),
  });

  final String imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Widget errorWidget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.r),
        child: FutureBuilder<ui.Image>(
          future: _loadImage(imageUrl),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return errorWidget;
            } else if (snapshot.hasData) {
              return RawImage(
                width: width,
                height: height?.h,
                image: snapshot.data,
                fit: fit,
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }

  Future<ui.Image> _loadImage(String url) async {
    final codec = await ui_web.createImageCodecFromUrl(Uri.parse(url));
    final frame = await codec.getNextFrame();
    return frame.image;
  }
}
