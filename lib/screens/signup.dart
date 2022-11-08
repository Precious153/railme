import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

import '../constants/myButton.dart';
import '../constants/myColor.dart';
import '../constants/myText.dart';
import '../constants/myTextFormField.dart';
import '../constants/validator.dart';
import '../sizeConfig.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool toggle = true;
  String selectedCountry = "Country";

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Palette.kBackgroundColorWhite,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: getProportionateScreenHeight(42),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(data: 'SignUp',
                      textAlign: TextAlign.center,
                      color: Palette.kTextColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w500,),
                  ],
                ),
                SizedBox(height: getProportionateScreenHeight(31),),
                myText(data: 'first Name',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "First Name",
                    textEditingController: firstNameController,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateFullName,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(16),),
                myText(data: 'Last Name',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "Last Name",
                    textEditingController: lastNameController,
                    keyboardType: TextInputType.name,
                    obscureText: false,
                    validator: Validator().validateLastName,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(16),),
                myText(data: 'email Address',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "Email Address",
                    textEditingController: emailController,
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    validator: Validator().validateEmail,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(16),),
                myText(data: 'Phone Number',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "PhoneNumber",
                    textEditingController: phoneController,
                    keyboardType: TextInputType.phone,
                    obscureText: false,
                    validator: Validator().validatePhoneNumber,
                    width: double.infinity, isPasswordType: false),
                SizedBox(height: getProportionateScreenHeight(16),),
                myText(data: 'Password',
                  textAlign: TextAlign.center,
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(8),),
                KTextFormField(hint: "password",
                  textEditingController: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: toggle,
                  passwordIcon:   GestureDetector(
                      onTap: (){
                        if(toggle==true){
                          setState(() {
                            toggle=false;
                          });
                        } else{
                          setState(() {
                            toggle =true;
                          });
                        }
                      },
                      child: toggle== true ?
                      Icon(Icons.visibility_off_outlined,
                        color: Palette.kBackgroundColor,) :
                      Icon(Icons.visibility,
                          color: Palette.kBackgroundColor) ),
                  validator: Validator().validatePassword,
                  width: double.infinity, isPasswordType: true,
                ),
                myText(data: 'Mininum of  8 Characters',
                  color: Palette.kTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,),
                SizedBox(height: getProportionateScreenHeight(69),),
                myButton(
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  },
                    height: 54,
                    width: double.infinity,
                    borderRadius: 8,
                    color: Palette.kBackgroundColor,
                    child: myText(data: 'SignUp', color: Palette.kColorWhite)),
                SizedBox(
                  height: getProportionateScreenHeight(10),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/');
                  },
                  child: Center(
                    child: myText(
                      data: 'Login',
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
