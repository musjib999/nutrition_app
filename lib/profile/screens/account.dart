import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:nutrition/profile/screens/account_settings.dart';
import 'package:nutrition/profile/screens/personal_information.dart';
import 'package:sizer/sizer.dart';

import '../../themes/colors.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      body: Container(
        margin: EdgeInsets.all(12.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.sp),
            const Center(
              child: CircleAvatar(
                radius: 40.0,
                backgroundColor: AppColors.inputGrey,
                child: Icon(
                  Ionicons.person,
                  color: AppColors.white,
                  size: 40,
                ),
              ),
            ),
            SizedBox(height: 7.sp),
            Center(
              child: Text(
                'John Doe',
                style: GoogleFonts.montserrat(
                    fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(height: 40.sp),
            ListTile(
              onTap: () => Navigator.of(context).push(PersonalInformation.route()),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.inputGrey,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              leading: const Icon(Ionicons.person_circle),
              title: const Text('Personal Information'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 15.sp),
            ListTile(
              onTap: () => Navigator.of(context).push(AccountSettings.route()),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.inputGrey,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              leading: const Icon(Icons.manage_accounts_sharp),
              title: const Text('Account Settings'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 15.sp),
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.inputGrey,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              leading: const Icon(Ionicons.card),
              title: const Text('Payment Details'),
              trailing: const Icon(Icons.arrow_forward_ios),
            ),
            SizedBox(height: 15.sp),
            ListTile(
              onTap: () {},
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                    color: AppColors.errorRed,
                  ),
                  borderRadius: BorderRadius.circular(8.0)),
              leading: const Icon(
                Icons.logout,
                color: AppColors.errorRed,
              ),
              title: const Text(
                'Logout',
                style: TextStyle(color: AppColors.errorRed),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: AppColors.errorRed,
              ),
            )
          ],
        ),
      ),
    );
  }
}
