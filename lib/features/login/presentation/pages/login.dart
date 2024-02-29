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
import '../../../signup/presentation/bloc/signup_bloc.dart';
import '../bloc/login_bloc.dart';

// ignore: use_key_in_widget_constructors, must_be_immutable
class LoginScreen extends StatelessWidget {
  var passwordController = TextEditingController();
  var userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: BlocConsumer<LoginBloc, LoginState>(
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
                    const VerticalSpace(91),
                    Center(
                      child: Image.asset(
                        AppImages.whiteroute,
                        width: 237.w,
                        height: 71.10.h,
                      ),
                    ),
                    const VerticalSpace(86.9),
                    Text(
                      AppStrings.welcome,
                      style: AppStyles.welcomeSytle,
                    ),
                    const VerticalSpace(8),
                    Text(
                      AppStrings.please,
                      style: AppStyles.smallStyle,
                    ),
                    const VerticalSpace(40),
                    Text(
                      AppStrings.userName,
                      style: AppStyles.whiteLableStyle,
                    ),
                    const VerticalSpace(24),
                    CustomTextField(
                        hint: AppStrings.userNameHint,
                        controller: userNameController),
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
                    const VerticalSpace(16),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          AppStrings.forgetPassword,
                          style: AppStyles.whiteLableStyle,
                        ),
                      ),
                    ),
                    const VerticalSpace(16),
                    ElevatedButton(
                      onPressed: () {
                        LoginBloc.get(context).add(LoginButtonEvent());
                      },
                      child: Text(
                        AppStrings.login,
                        style: AppStyles.buttonTextStyle,
                      ),
                    ),
                    const VerticalSpace(32),
                    Center(
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacementNamed(
                              context, Routes.signUp);
                        },
                        child: Text(
                          AppStrings.haveAccount,
                          style: AppStyles.whiteLableStyle,
                        ),
                      ),
                    ),
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
