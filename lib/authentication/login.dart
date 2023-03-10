import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nutrition/authentication/register.dart';
import 'package:nutrition/shared/constants.dart';
import 'package:nutrition/shared/widgets/menu.dart';
import 'package:nutrition/themes/assets.dart';
import 'package:nutrition/themes/colors.dart';
import 'package:sizer/sizer.dart';

import '../survey/widgets/primary_button.dart';
class Login extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (_) => const Login());
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Container(
        width: 100.w,
        color: AppColors.primaryColor,
        child: Column(
          children: [
            Container(
              height: 20.h,
              padding: EdgeInsets.only(top: 5.sp, bottom: 5.sp),
              child: Center(child: Image.asset(AppAssets.logo, height: 14.h,),),
            ),
            Expanded(
              child: Container(
                width: 100.w,
                decoration: BoxDecoration(color: AppColors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20.sp), topLeft: Radius.circular(20.sp),),
                ),
                child: SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(12.sp),
                    child: Column(
                      children: [
                        SizedBox(height: 10.sp),
                        Text('Welcome Back!', style: GoogleFonts.mukta(fontWeight: FontWeight.w700, fontSize: 20),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Don\'t have an account?', style: GoogleFonts.mukta(fontSize: 15, color: AppColors.grey),),
                            TextButton(onPressed: (){
                              Navigator.of(context).push(Register.route());
                            }, child: Text('Register', style: GoogleFonts.mukta(fontSize: 15, fontWeight: FontWeight.w600,color: AppColors.primaryColor),),),
                          ],
                        ),
                        SizedBox(height: 30.sp),
                        TextFormField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.email_outlined),
                            hintText: 'Enter email',
                            labelText: 'Email',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5,)),
                          ),
                        ),
                        SizedBox(height: 15.sp),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.lock_outline),
                            hintText: 'Enter password',
                            labelText: 'Password',
                            enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.grey)),
                            focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: const BorderSide(color: AppColors.primaryColor, width: 1.5,)),
                          ),
                        ),
                        SizedBox(height: 20.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(onPressed: (){}, child: Text('Forgot Password?', style: GoogleFonts.mukta(fontSize: 15, fontWeight: FontWeight.w600,color: AppColors.primaryColor),),),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        PrimaryButton(title: 'Sign In', onTap: (){
                          Navigator.of(context).pushReplacement(AppMenu.route(screens: appMenus));
                        }, isSelected: true, width: 100.w,),
                        SizedBox(height: 10.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(width: 40.w, child: const Divider(color: AppColors.grey,)),
                            Text('Or', style: GoogleFonts.mukta(color: AppColors.grey, fontSize: 17),),
                            SizedBox(width: 40.w, child: const Divider(color: AppColors.grey,),),
                          ],
                        ),
                        SizedBox(height: 20.sp),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            AppOutlinedButton(title: 'Gmail', onTap: (){}, icon: Ionicons.logo_google, iconColor: Colors.redAccent),
                            AppOutlinedButton(title: 'Facebook', onTap: (){}, icon: Ionicons.logo_facebook, iconColor: Colors.blue)
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
