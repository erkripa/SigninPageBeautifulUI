import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/pages/auth/sign_up_page.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/utils/dimensions.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/custom_text__field.dart';
import 'package:food_delivery/widgets/small_text.dart';
import 'package:get/get.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var phoneController = TextEditingController();
    var nameController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.screenHeight * 0.05),
            Container(
              height: Dimensions.screenHeight * 0.25,
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 80,
                  backgroundImage: AssetImage('assets/image/logo part 1.png'),
                ),
              ),
            ),
            //Welcome
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: Dimensions.width20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(
                      text: 'Hello',
                      color: Colors.black,
                      size: Dimensions.height120 / 2,
                    ),
                    SmallText(
                      text: 'Welcome to Foodly',
                      size: Dimensions.bigTextFontSize20,
                      color: Colors.grey[500],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            //Email feild
            CustomTextField(
              textController: emailController,
              hintText: 'Email.',
              icon: Icons.email,
            ),
            SizedBox(height: Dimensions.height10),
            CustomTextField(
              textController: passwordController,
              hintText: 'Password',
              icon: Icons.password,
              isObsecure: true,
            ),
            SizedBox(height: Dimensions.height10),

            Padding(
              padding: EdgeInsets.only(
                  top: Dimensions.height10, right: Dimensions.width20),
              child: Align(
                alignment: Alignment.centerRight,
                child: RichText(
                  text: TextSpan(
                      text: 'Sign in into your account',
                      style: TextStyle(
                        fontSize: Dimensions.bigTextFontSize20,
                        color: Colors.grey[400],
                      )),
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),

            SizedBox(
              height: Dimensions.height20 * 2.7,
              width: Dimensions.screenWidth / 1.3,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: AppColors.mainColor,
                  shape: const StadiumBorder(),
                ),
                child: BigText(
                  text: 'SignIn',
                  color: Colors.white,
                  size: Dimensions.bigTextFontSize20,
                ),
              ),
            ),
            SizedBox(height: Dimensions.height20),
            RichText(
              text: TextSpan(
                  text: 'Don\'t have an account?',
                  style: TextStyle(
                    fontSize: Dimensions.bigTextFontSize20,
                    color: Colors.grey[400],
                  ),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const SignUpPage(),
                            transition: Transition.rightToLeftWithFade),
                      text: ' Create',
                      style: TextStyle(
                        fontSize: Dimensions.bigTextFontSize20,
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
