import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class InputRegisterCandidate extends StatelessWidget {
  final String tituloInput;
  final double? fontSize;
  final Color? fillColor;
  final Color? hoverColor;
  final String hintText;
  final String? helperText;
  final double? leftPadding;
  final double? topPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final double? borderRadius;
  final double? width;
  final TextEditingController controller;
  final CrossAxisAlignment? crossAxisAlignment;
  final Function(bool)? onFocusChange;
  final String? Function(String?)? validator;

  const InputRegisterCandidate({Key? key, required this.tituloInput, this.fontSize, this.fillColor, this.hoverColor, required this.hintText, this.helperText, this.leftPadding, this.topPadding, this.rightPadding, this.bottomPadding, this.borderRadius, required this.controller, this.crossAxisAlignment, this.width, this.onFocusChange, this.validator}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
        children: [
          SelectableText(
            tituloInput,
            style: TextStyle(fontSize: fontSize ?? 13.sp),
          ),
          SizedBox(
            height: 1.h,
          ),
          Focus(
            child: TextFormField(
              validator: validator,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(borderRadius ?? 10.0),
                ),
                filled: true,
                fillColor: fillColor ?? Colors.white,
                hoverColor: hoverColor ?? Colors.white,
                hintText: hintText,
                isDense: true,
                isCollapsed: true,
                helperText: helperText ?? "",
                contentPadding: EdgeInsets.fromLTRB(leftPadding ?? 0.5.w, topPadding ?? 3.h, rightPadding ?? 0.5.w, bottomPadding ?? 3.h),
              ),
              controller: controller,
            ),
            onFocusChange: onFocusChange,
          ),
        ],
      ),
    );
  }
}
