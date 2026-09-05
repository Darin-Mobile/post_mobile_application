import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:post_mobile_application/modules/auth/register/controller/register_controller.dart';
import 'package:post_mobile_application/widgets/button_custom_widget.dart';
import 'package:post_mobile_application/widgets/header_title_custom_widget.dart';
import 'package:post_mobile_application/widgets/input_form_custom.dart';

class RegisterView extends GetView<RegisterController> {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
            child: Column(
              children: [
                HeaderTitleCustomWidget(title: 'Create Account'),
                const SizedBox(height: 24),

                InputFormCustom(
                  controller: controller.firstNameController,
                  labelText: 'First name',
                  hintText: 'Enter first name',
                ),
                InputFormCustom(
                  controller: controller.lastNameController,
                  labelText: 'Last name',
                  hintText: 'Enter last name',
                ),
                InputFormCustom(
                  controller: controller.usernameController,
                  labelText: 'Username',
                  hintText: 'Enter username',
                ),
                InputFormCustom(
                  controller: controller.emailController,
                  labelText: 'Email',
                  hintText: 'example@email.com',
                ),
                InputFormCustom(
                  controller: controller.phoneNumberController,
                  labelText: 'Phone number',
                  hintText: 'Enter phone number',
                ),
                InputFormCustom(
                  controller: controller.passwordController,
                  labelText: 'Password',
                  hintText: 'At least 6 characters',
                ),
                InputFormCustom(
                  controller: controller.confirmPasswordController,
                  labelText: 'Confirm password',
                  hintText: 'Enter password again',
                ),

                const SizedBox(height: 24),

                ButtonCustomWidget(
                  title: 'Register',
                  loading: controller.loading.value,
                  onClick: controller.loading.value
                      ? null
                      : () => controller.onRegister(),
                ),

                TextButton(
                  onPressed: () => Get.back(),
                  child: const Text('Already have an account? Login'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}