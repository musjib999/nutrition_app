import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool? obscureText;
  final double? width;
  final bool? enabled;
  final int? maxLines;
  final IconData? suffixIcon;
  final String? Function(String?)? validator;
  const AppTextField({Key? key, required this.controller, required this.hintText, this.obscureText, this.validator, this.width, this.enabled = true, this.maxLines, this.suffixIcon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 100.w,
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText ?? false,
        enabled: enabled,
        decoration: InputDecoration(
          labelText: hintText,
          suffixIcon: Icon(suffixIcon),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.grey)),
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5,)),
          disabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.grey)),
        ),
      ),
    );
  }
}
