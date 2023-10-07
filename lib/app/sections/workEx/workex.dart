import 'package:flutter/widgets.dart';
import 'package:mysite/app/sections/workEx/workEx_desktop.dart';
import 'package:mysite/app/sections/workEx/workEx_mobile.dart';

import '../../../core/res/responsive.dart';

class WorkEx extends StatelessWidget {
  const WorkEx({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: WorkExMobile(),
      tablet: WorkExMobile(),
      desktop: WorkExDesktop(),
    );
  }
}
