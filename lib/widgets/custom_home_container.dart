import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:zeus_card/core/resources/fonts/font_manager.dart';
import 'custom_image_loader.dart';

class CustomHomeContainer extends StatefulWidget {
  const CustomHomeContainer({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  State<CustomHomeContainer> createState() => _State();
}

class _State extends State<CustomHomeContainer> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        width: _isHovered ? 232.h : 220.h,
        height: _isHovered ? 362.h : 361.h,
        duration: const Duration(milliseconds: 150),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: LinearGradient(
            colors: [
              _isHovered ? Colors.blue : Colors.green.withOpacity(0.8),
              _isHovered ? Colors.green : Colors.blue.withOpacity(0.8)
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(_isHovered ? 1 : 0.2),
              blurRadius: 20,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
            BoxShadow(
              color: Colors.blue.withOpacity(_isHovered ? 1 : 0.2),
              blurRadius: 20,
              spreadRadius: 1,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(8.r),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageLoader(imageUrl: widget.imageUrl),
              RichText(
                text: TextSpan(
                    style: TextStyle(
                      fontFamily: FontFamilyManager.lora,
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                    children: const [
                      TextSpan(
                        text: "Category\n",
                      ),
                      TextSpan(
                        text: "Type\n",
                      ),
                      TextSpan(
                        text: "Item",
                      ),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
