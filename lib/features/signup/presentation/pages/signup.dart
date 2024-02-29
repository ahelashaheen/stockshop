import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/space.dart';
import '../../../../core/utils/components/text_field.dart';
import '../../data/models/request_paramters.dart';
import '../bloc/signup_bloc.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class SignupScreen extends StatelessWidget {
  var emailController = TextEditingController();
  var phoneController = TextEditingController();
  var passwordController = TextEditingController();
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupBloc(),
      child: BlocConsumer<SignupBloc, SignupState>(
        listener: (context, state) {
          if (state.status == ScreenStatus.loading) {
            showDialog(
              context: context,
              builder: (context) => const AlertDialog(
                title: Center(child: CircularProgressIndicator()),
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
            );
          } else if (state.status == ScreenStatus.failure) {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Error"),
                content: Text(state.failures?.message ?? ""),
              ),
            );
          } else if (state.status == ScreenStatus.success) {
            Navigator.pushNamedAndRemoveUntil(
                context, Routes.homeLayout, (route) => false);
          }
        },
        builder: (context, state) {
          return Scaffold(
            backgroundColor: AppColors.secondry,
            resizeToAvoidBottomInset: false,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Spacer(flex: 2),
                    Center(
                      child: Image.asset(
                        AppImages.whiteroute,
                        width: 237.w,
                        height: 71.10.h,
                      ),
                    ),
                    const VerticalSpace(46.9),
                    Text(
                      AppStrings.fullName,
                      style: AppStyles.whiteLableStyle,
                    ),
                    const VerticalSpace(24),
                    CustomTextField(
                        hint: AppStrings.fullNameHint,
                        controller: nameController),
                    const VerticalSpace(32),
                    Text(
                      AppStrings.phone,
                      style: AppStyles.whiteLableStyle,
                    ),
                    const VerticalSpace(24),
                    CustomTextField(
                        hint: AppStrings.phoneHint,
                        controller: phoneController),
                    const VerticalSpace(32),
                    Text(
                      AppStrings.email,
                      style: AppStyles.whiteLableStyle,
                    ),
                    const VerticalSpace(24),
                    CustomTextField(
                        hint: AppStrings.emailHint,
                        controller: emailController),
                    const VerticalSpace(32),
                    Text(
                      AppStrings.password,
                      style: AppStyles.whiteLableStyle,
                    ),
                    const VerticalSpace(24),
                    CustomTextField(
                      hint: AppStrings.passwordHint,
                      controller: passwordController,
                      isPassword: true,
                      isShow: false,
                      onPressed: () {},
                    ),
                    const VerticalSpace(56),
                    ElevatedButton(
                      onPressed: () {
                        SignupBloc.get(context).add(SignupButtonEvent(
                            RequestParam(
                                email: emailController.text,
                                password: passwordController.text,
                                name: nameController.text,
                                phone: phoneController.text)));
                      },
                      child: Text(
                        AppStrings.signUp,
                        style: AppStyles.buttonTextStyle,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
