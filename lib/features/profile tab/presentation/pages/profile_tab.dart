import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/route_logo.dart';
import '../../../../core/utils/components/space.dart';
import '../widgets/row.dart';

class ProfileTab extends StatelessWidget {
  ProfileTab({super.key});

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 16.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const RouteLoge(),
                const VerticalSpace(24),
                Text('welcome,name!', style: AppStyles.blueLableStyle),
                const VerticalSpace(8),
                Text('email,email,email', style: AppStyles.blueLableStyle),
                const VerticalSpace(40),
                RowItem(
                  lable: AppStrings.uName,
                  hint: 'Name , name,name',
                  controller: nameController,
                ),
                RowItem(
                  lable: AppStrings.uEmail,
                  hint: 'mohamed.N@gmail.com',
                  controller: emailController,
                ),
                RowItem(
                  lable: AppStrings.upassword,
                  hint: '**********************',
                  controller: passController,
                ),
                RowItem(
                  lable: AppStrings.uphone,
                  hint: '01122118855',
                  controller: phoneController,
                ),
                RowItem(
                  lable: AppStrings.uaddress,
                  hint: '6th October, street 11.....',
                  controller: addressController,
                ),
                const VerticalSpace(150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
