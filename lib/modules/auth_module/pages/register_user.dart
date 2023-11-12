import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:movie_review_app/shared/routes/app_routes.dart';
import 'package:movie_review_app/modules/auth_module/auth_controller.dart';
import 'package:movie_review_app/widgets/ModalProgressHUD.dart';
import 'package:movie_review_app/widgets/custom_textfield.dart';
import 'package:movie_review_app/widgets/rounded_button.dart';
import '../../../shared/themes/app_theme.dart';

class RegisterUserPage extends StatefulWidget {
  const RegisterUserPage({Key? key}) : super(key: key);

  @override
  State<RegisterUserPage> createState() => _RegisterUserPageState();
}

class _RegisterUserPageState extends State<RegisterUserPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  AuthController authController = Get.find();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
                child: Form(
                  key: _formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/logo.png',
                                width: 50,
                                height: 50,
                              ),
                              Text(
                                "MVr",
                                style: AppTheme.mainHeader(),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: 150,
                                child: Text(
                                  "MOVIE APP",
                                  style: AppTheme.bodyWhite(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(
                                height: 60,
                              ),
                              SizedBox(
                                child: Text(
                                  "Register",
                                  style: AppTheme.titleWhite(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        CustomTextField(
                          label: "User Name",
                          hintText: "Janet",
                          controller: _usernameController,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(64),
                          ],
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your name";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CustomTextField(
                          label: "Email",
                          hintText: "email@gmail.com",
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your email address";
                            }
                            if (!RegExp(
                                    r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                .hasMatch(value)) {
                              return "Invalid Email Address";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        RoundedButton(
                            text: "Register",
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await authController.register(
                                    _usernameController.text,
                                    _emailController.text);
                              }
                            }),
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Expanded(
                              child: Divider(
                                color: AppTheme.offWhite,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                authController.isSigningFromReview
                                    ? Get.back()
                                    : Get.toNamed(Routes.mainPage);
                              },
                              child: Text(" NOT NOW ",
                                  style: AppTheme.bodyWhite()),
                            ),
                            const Expanded(
                              child: Divider(
                                color: AppTheme.offWhite,
                              ),
                            ),
                          ],
                        )
                      ]),
                ),
              ),
            ),
            Obx(() => ModalProgressHUD(
                inAsyncCall: authController.status.isLoading,
                child: const SizedBox()))
          ],
        ));
  }
}
