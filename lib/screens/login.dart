
import 'package:flutter/material.dart';

import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/validator.dart';
import '../sizeConfig.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool toggle = true;
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(73),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(
                      data: 'Login',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(77),
                ),
                myText(
                  data: 'Email Address',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                    hint: "Email Address",
                    textEditingController: phoneController,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    validator: Validator().validateEmail,
                    width: double.infinity,
                    isPasswordType: false),
                SizedBox(
                  height: getProportionateScreenHeight(16),
                ),
                myText(
                  data: 'Password',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                KTextFormField(
                  hint: "password",
                  textEditingController: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle,
                  passwordIcon: GestureDetector(
                      onTap: () {
                        if (toggle == true) {
                          setState(() {
                            toggle = false;
                          });
                        } else {
                          setState(() {
                            toggle = true;
                          });
                        }
                      },
                      child: toggle == true
                          ? Icon(
                        Icons.visibility_off_outlined,
                        color: Palette.kBackgroundColor,
                      )
                          : Icon(Icons.visibility,
                          color: Palette.kBackgroundColor)),
                  validator: Validator().validatePassword,
                  width: double.infinity,
                  isPasswordType: true,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(8),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'ForgotPassword');
                      },
                      child: myText(
                        data: 'forgot password?',
                        textAlign: TextAlign.center,
                        color: Palette.kTextColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(135),
                ),
                myButton(
                    onTap: () {
                      Navigator.pushNamed(context, 'HomePage');
                    },
                    height: 54,
                    width: double.infinity,
                    borderRadius: 8,
                    color: Palette.kBackgroundColor,
                    child: myText(data: 'Login', color: Palette.kColorWhite)),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, 'CreateAccount');
                  },
                  child: Center(
                    child: myText(
                      data: 'Sign Up',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
