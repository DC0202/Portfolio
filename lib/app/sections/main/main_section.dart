import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mysite/app/widgets/arrow_on_top.dart';
import 'package:mysite/app/widgets/color_chage_btn.dart';
import 'package:mysite/changes/links.dart';
import 'package:mysite/core/apis/links.dart';
import 'package:mysite/core/color/colors.dart';
import 'package:mysite/core/configs/app.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:mysite/core/providers/drawer_provider.dart';
import 'package:mysite/core/providers/scroll_provider.dart';
import 'package:mysite/app/utils/navbar_utils.dart';
import 'package:mysite/app/utils/utils.dart';
import 'package:mysite/app/widgets/navbar_actions_button.dart';
import 'package:mysite/app/widgets/navbar_logo.dart';
import 'package:mysite/core/res/responsive.dart';
import 'package:mysite/core/theme/cubit/theme_cubit.dart';
import 'package:mysite/main.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:flutter/material.dart';
import 'package:mysite/core/util/constants.dart';
import 'package:sizer/sizer.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_body.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late Offset cursorPosition;

  @override
  void initState() {
    super.initState();
    cursorPosition = const Offset(0, 0); // Initializing cursorPosition
  }

  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Responsive(
          desktop: _NavbarDesktop(),
          mobile: _NavBarTablet(),
          tablet: _NavBarTablet(),
        ),
      ),
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Stack(
            children: [
              Positioned(
                top: height * 0.2,
                left: -88,
                child: Container(
                  height: height / 3,
                  width: 166,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: secondaryColor,
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 200, sigmaY: 200),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: -100,
                child: Container(
                  height: 100,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: primaryColor.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 500,
                      sigmaY: 500,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),

              // if (!state.isDarkThemeOn)
              //   Container(
              //     color: const Color(0xFF090C2E),
              //   ),

              MyApp(),
              if (Responsive.isDesktop(context))
                Positioned(
                  left: cursorPosition.dx - 20,
                  top: cursorPosition.dy - 20,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      // color: Colors.amber,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blue.withOpacity(0.2),
                          // color: const Color(0xFF242746).withOpacity(0.5),
                          spreadRadius: 300,
                          blurRadius: 300,
                        ),
                      ],
                    ),
                  ),
                ),
              if (!state.isDarkThemeOn)
                Align(
                  alignment: Alignment.center,
                  // BG01.png
                  child: Image.asset(
                    'assets/imgs/coding.jpeg',
                    opacity: const AlwaysStoppedAnimation<double>(0.05),
                    width: width,
                    height: height,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
              Responsive.isDesktop(context)
                  ? MouseRegion(
                      onEnter: (_) {},
                      onHover: (pointerEvent) {
                        setState(() {
                          cursorPosition = pointerEvent.position;
                        });
                      },
                      onExit: (_) {},
                      child: Container(
                        color: !state.isDarkThemeOn ? null : null,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,
                        child: _Body(),
                      ),
                    )
                  : _Body(),
              const ArrowOnTop(),
            ],
          );
        },
      ),
    );
  }
}
