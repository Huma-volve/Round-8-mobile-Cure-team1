import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommentUserImage extends StatelessWidget {
  const CommentUserImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62.h,
      width: 62.w,
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(40)
      ),
    );
  }
}