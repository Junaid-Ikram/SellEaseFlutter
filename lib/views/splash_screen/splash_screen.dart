import 'package:get/get.dart';
import 'package:project_2/authen_screen/login_screen.dart';
import 'package:project_2/consts/consts.dart';
import 'package:project_2/widgets_common/applogo_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  // Creating a method to change Screen

  changeScreen() {
    Future.delayed(Duration(seconds: 3),() {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
                child: Image.asset(icSplashBg, width: 300,)),
            20.heightBox,
            applogoWidget(),
            10.heightBox,
            "SellEase".text.white.fontFamily(bold).size(22).make(),
            Spacer(),
            credits.text.white.fontFamily(semibold).make(),
            30.heightBox,

            // Splash Screen UI is Completed
          ],
        ),
      ),
    );
  }
}

