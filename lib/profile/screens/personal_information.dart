import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../shared/widgets/app_text_field.dart';
import '../../survey/widgets/primary_button.dart';
import '../../themes/colors.dart';

class PersonalInformation extends StatefulWidget {
  static Route route() => MaterialPageRoute(
        builder: (_) => const PersonalInformation(),
      );
  const PersonalInformation({Key? key}) : super(key: key);

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  bool enableTextFields = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      fName.text = 'John';
      lName.text = 'Doe';
      phone.text = '+234 8115049208';
      email.text = 'johndoe@gmail.com';
      address.text = '11, Herbert Macauly Way, Yaba, Lagos.';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Personal Information'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              setState(() {
                enableTextFields = true;
              });
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(12.sp),
          child: Column(
            children: [
              SizedBox(height: 15.sp),
              AppTextField(
                controller: fName,
                hintText: 'First Name',
                enabled: enableTextFields,
              ),
              SizedBox(height: 18.sp),
              AppTextField(
                controller: fName,
                hintText: 'Last Name',
                enabled: enableTextFields,
              ),
              SizedBox(height: 18.sp),
              AppTextField(
                controller: email,
                hintText: 'Email Address',
                enabled: false,
              ),
              SizedBox(height: 18.sp),
              AppTextField(
                controller: phone,
                hintText: 'Phone Number',
                enabled: enableTextFields,
              ),
              SizedBox(height: 18.sp),
              AppTextField(
                controller: address,
                hintText: 'Home Address',
                enabled: enableTextFields,
              ),
              SizedBox(height: 40.sp),
              PrimaryButton(
                width: 50.w,
                title: 'Save Changes',
                onTap:  enableTextFields == false ? (){} : () {},
                isSelected: enableTextFields,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
