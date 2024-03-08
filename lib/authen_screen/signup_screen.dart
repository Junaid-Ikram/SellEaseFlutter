import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../consts/consts.dart';
import '../widgets_common/applogo_widget.dart';
import '../widgets_common/bg_widget.dart';
import '../widgets_common/custom_textfeild.dart';
import '../widgets_common/my_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? isCheck = false;
  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            applogoWidget(),
            10.heightBox,
            "Sign Up".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,

            //  White Box

            Column(
              children: [
                CustomTextFeild(name, nameHint),
                CustomTextFeild(email, emailHint),
                CustomTextFeild(password, passwordHint),
                CustomTextFeild(retypePassword, passwordHint),
                Row(
                  children: [
                    Checkbox(
                        value: isCheck,
                        checkColor: redColor,
                        onChanged: (newValue) {
                          setState(() {
                            isCheck = newValue;
                          });
                    }),
                    5.widthBox,
                    Expanded(
                      child: RichText(text: TextSpan(
                        children: [
                          TextSpan(text: "I agree to the ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                          TextSpan(text: termsAndConditions, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),
                          TextSpan(text: " & ", style: TextStyle(
                            fontFamily: regular,
                            color: fontGrey,
                          )),
                          TextSpan(text: privacyPolicy, style: TextStyle(
                            fontFamily: regular,
                            color: redColor,
                          )),

                        ],
                      ),

                      ),
                    )

                  ],
                ),
                5.heightBox,
                MyButton(isCheck == true? redColor : fontGrey, whiteColor, signup, (){}).box.width(context.screenWidth - 50).make(),
                10.heightBox,

                // wrapping into gesture detector of velocity x

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    "Already have an account? ".text.fontFamily(bold).color(fontGrey).make(),
                    login.text.color(redColor).fontFamily(bold).make(),
                  ],
                ).onTap((){
                  Get.back();
                })

              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),

          ],
        ),
      ),
    ));
  }
}
