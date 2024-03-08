import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:project_2/authen_screen/signup_screen.dart';
import 'package:project_2/consts/consts.dart';
import 'package:project_2/consts/lists.dart';
import 'package:project_2/home_screen/home.dart';
import 'package:project_2/widgets_common/applogo_widget.dart';
import 'package:project_2/widgets_common/bg_widget.dart';
import 'package:project_2/widgets_common/custom_textfeild.dart';
import '../widgets_common/my_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

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
            "Log in to $appname".text.white.fontFamily(bold).size(18).make(),
            15.heightBox,

            //  White Box

            Column(
              children: [
                CustomTextFeild(email, emailHint),
                CustomTextFeild(password, passwordHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(onPressed: (){

                  }, child: forgetpass.text.make()),
                ),
                5.heightBox,
                //MyButton().box.width(context.screenWidth - 50).make(),
                MyButton(redColor, whiteColor, login, (){
                  Get.to(() => Home());
                }).box.width(context.screenWidth - 50).make(),
                5.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                5.heightBox,
                MyButton(lightGolden, redColor, signup, (){
                  Get.to(() => SignupScreen());
                }).box.width(context.screenWidth - 50).make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                5.heightBox,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: lightGrey,
                      radius: 25,
                      child: Image.asset(socialIconList[index], width: 30,),),
                  ))
                )
              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).shadowSm.make(),

          ],
        ),
      ),
    ));
  }
}
