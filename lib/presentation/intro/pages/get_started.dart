import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vroz/common/widget/buttons/basic_app_button.dart';
import 'package:vroz/core/configs/assets/app_images.dart';
import 'package:vroz/core/configs/assets/app_vectors.dart';
import 'package:vroz/core/configs/theme/app_colors.dart';
import 'package:vroz/presentation/choose_mode/pages/choose_mode.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 40
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG1),
              ),
            ),
            child: Column(
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: SvgPicture.asset(
                        AppVectors.logo
                    )
                ),
                Spacer(),
                Text(
                  'Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
                SizedBox(
                  height:50
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. Tortor aliquam nunc id semper porta. Imperdiet sed lectus vitae sit ipsum leo. Sed proin morbi donec nunc bibendum ultricies augue.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center
                ),
                SizedBox(
                    height:200
                ),
                BasicAppButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext)=> const ChooseMode()
                        )
                      );
                },
                    title: 'GetStarted'
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
