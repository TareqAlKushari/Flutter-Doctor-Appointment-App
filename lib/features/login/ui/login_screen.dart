import 'package:doctor_appointment_app/features/login/ui/widgets/already_have_account_text.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/dont_have_account_text.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/email_and_password.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/login_bloc_listener.dart';
import 'package:doctor_appointment_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/helpers/spacing.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';
import '../../../core/widgets/app_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome Back',
                  style: TextStyles.font24BlueBold,
                ),
                verticalSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style: TextStyles.font14GrayRegular,
                ),
                verticalSpace(36),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const AppTextFormField(hintText: 'Email'),
                      verticalSpace(18),
                      AppTextFormField(
                        hintText: 'Password',
                        isObscureText: isObscureText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                      ),
                      verticalSpace(24),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                      verticalSpace(40),
                      AppTextButton(
                        buttonText: "Login",
                        textStyle: TextStyles.font16WhiteSemiBold,
                        onPressed: () {},
                      ),
                      verticalSpace(16),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText(),
                    ],
                  ),
                ),
                // Column(
                //   children: [
                //     const EmailAndPassword(),
                //     verticalSpace(24),
                //     Align(
                //       alignment: AlignmentDirectional.centerEnd,
                //       child: Text(
                //         'Forgot Password?',
                //         style: TextStyles.font13BlueRegular,
                //       ),
                //     ),
                //     verticalSpace(40),
                //     AppTextButton(
                //       buttonText: "Login",
                //       textStyle: TextStyles.font16WhiteSemiBold,
                //       onPressed: () {
                //         validateThenDoLogin(context);
                //       },
                //     ),
                //     verticalSpace(16),
                //     const TermsAndConditionsText(),
                //     verticalSpace(60),
                //     const DontHaveAccountText(),
                //     const LoginBlocListener(),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    // if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    //   context.read<LoginCubit>().emitLoginStates();
    // }
  }
}
