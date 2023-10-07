import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mysite/app/sections/home/widgets/animation_text.dart';
import 'package:mysite/core/animations/zoom_animation.dart';
import 'package:mysite/core/res/responsive_size.dart';
import 'package:mysite/core/theme/cubit/theme_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:universal_html/html.dart' as html;
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/img.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/changes/strings.dart';
import 'package:mysite/core/animations/entrance_fader.dart';
import 'package:mysite/core/configs/configs.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return SizedBox(
        height: 100.h,
        child: Container(
          // padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
          margin: EdgeInsets.fromLTRB(5.w, 15.h, 5.w, 10.h),
          decoration: BoxDecoration(
            color: state.isDarkThemeOn
                ? Colors.black.withOpacity(0.2)
                : Colors.white.withOpacity(0.2),
            borderRadius: const BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // margin: EdgeInsets.only(top: 5.h),
                padding: EdgeInsets.only(left: 9.w),
                width: 55.w,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(hellotag,
                            style: const TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w100,
                            )),
                        EntranceFader(
                          offset: const Offset(0, 0),
                          delay: const Duration(seconds: 2),
                          duration: const Duration(milliseconds: 800),
                          child: Image.asset(StaticImage.hi, height: 40),
                        ),
                      ],
                    ),
                    Space.y(0.5.w)!,
                    Text(yourname,
                        style: const TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                        )),
                    AnimatedTextKit(
                      isRepeatingAnimation: true,
                      repeatForever: true,
                      animatedTexts: desktopList,
                    ),
                    Space.y(1.5.w)!,
                    Padding(
                      padding: EdgeInsets.only(right: 10.w),
                      child: Text(miniDescription,
                          style: TextStyle(
                            fontSize: isFontSize(context, 20),
                            fontWeight: FontWeight.w400,
                            color: theme.textColor.withOpacity(0.6),
                          )),
                    ),
                    Space.y(3.w)!,
                    ColorChageButton(
                      text: 'RESUME',
                      onTap: () {
                        html.window.open(resume, "pdf");
                      },
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 9.w),
                child: const ZoomAnimations(),
              ),
            ],
          ),
        ),
      );
    });
  }
}
