import 'package:semi11/screens/authentication/mobile/mobile_screen.dart';
import 'package:semi11/screens/authentication/welcome/welcome_screen_controller.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:semi11/theme/colors.dart';
import 'package:semi11/theme/text_style.dart';
import 'package:semi11/constant/sizedbox.dart';
import 'package:semi11/constant/default_images.dart';
import 'package:semi11/widget/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<WelcomeScreenController>(
      init: WelcomeScreenController(),
      builder: (WelcomeScreenController controller) => Scaffold(
        // backgroundColor: primary,
        body: Stack(
          children: <Widget>[
            Image.asset(
              authBackground,
              height: Get.height,
              width: Get.width,
              fit: BoxFit.cover,
            ),
            Container(
              color: dark.withOpacity(0.85),
              padding: const EdgeInsets.all(20),
              height: Get.height,
              width: Get.width,
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    height30,
                    height30,
                    height30,
                    Text(
                      'Welcome to Semi11',
                      style: blackText30.copyWith(
                        color: whiteColor,
                        fontFamily: 'source_serif_pro',
                      ),
                    ),
                    Text(
                      'Be ready for start winning...',
                      style: boldText14.copyWith(
                        color: darkGrey,
                        fontFamily: 'source_serif_pro',
                        letterSpacing: 0.5,
                      ),
                    ),
                    const Spacer(),
                    // if (Platform.isIOS)
                    //   ElevatedButton(
                    //     style: ElevatedButton.styleFrom(
                    //       backgroundColor: blackColor,
                    //       padding: const EdgeInsets.symmetric(
                    //         vertical: 12,
                    //         horizontal: 20,
                    //       ),
                    //       shape: const RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.all(Radius.circular(20)),
                    //       ),
                    //     ),
                    //     onPressed: () {
                    //       // controller.handleAppleButtonClick();
                    //     },
                    //     child: Row(
                    //       children: <Widget>[
                    //         Image.asset(
                    //           appleLogo,
                    //           height: 30,
                    //           width: 30,
                    //         ),
                    //         Expanded(
                    //           child: Center(
                    //             child: Text(
                    //               'Continue with apple',
                    //               style: mediumText16.copyWith(
                    //                 color: whiteColor,
                    //               ),
                    //             ),
                    //           ),
                    //         ),
                    //         width30,
                    //       ],
                    //     ),
                    //   ),
                    // if (Platform.isIOS) height15,
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: googleColor,
                    //     padding: const EdgeInsets.symmetric(
                    //       vertical: 12,
                    //       horizontal: 20,
                    //     ),
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(Radius.circular(20)),
                    //     ),
                    //   ),
                    //   onPressed: () async {},
                    //   child: Row(
                    //     children: <Widget>[
                    //       const CircleAvatar(
                    //         radius: 15,
                    //         backgroundImage: AssetImage(
                    //           googleLogo,
                    //         ),
                    //       ),
                    //       Expanded(
                    //         child: Center(
                    //           child: Text(
                    //             'Continue with google',
                    //             style: mediumText16.copyWith(
                    //               color: whiteColor,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       width30,
                    //     ],
                    //   ),
                    // ),
                    // height15,
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: facebookColor,
                    //     padding: const EdgeInsets.symmetric(
                    //       vertical: 12,
                    //       horizontal: 20,
                    //     ),
                    //     shape: const RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.all(Radius.circular(20)),
                    //     ),
                    //   ),
                    //   onPressed: () {},
                    //   child: Row(
                    //     children: <Widget>[
                    //       Image.asset(
                    //         facebookLogo,
                    //         height: 30,
                    //         width: 30,
                    //       ),
                    //       Expanded(
                    //         child: Center(
                    //           child: Text(
                    //             'Continue with facebook',
                    //             style: mediumText16.copyWith(
                    //               color: whiteColor,
                    //             ),
                    //           ),
                    //         ),
                    //       ),
                    //       width30,
                    //     ],
                    //   ),
                    // ),
                    Buttons.elevatedButton(
                      title: 'Sign In',
                      backgroundColor: primary,
                      textColor: whiteColor,
                      onPressed: () {
                        Get.to(
                          () => const MobileScreen(
                            isLogin: true,
                          ),
                        );
                      },
                    ),
                    height10,
                    Buttons.outlinedButton(
                      title: 'Sign Up',
                      borderColor: whiteColor,
                      textColor: whiteColor,
                      onPressed: () {
                        Get.to(
                          () => const MobileScreen(
                            isLogin: false,
                          ),
                        );
                      },
                    ),
                    height30,
                    Center(
                      child: Text(
                        'By logging in you agree with our Terms & privacy',
                        style: regularText12.copyWith(
                          color: secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
