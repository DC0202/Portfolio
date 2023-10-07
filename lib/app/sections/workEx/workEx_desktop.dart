import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mysite/app/sections/workEx/widgets/workExList.dart';
import 'package:mysite/core/configs/configs.dart';
import 'package:sizer/sizer.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../../../changes/strings.dart';
import '../../../core/configs/others/space.dart';
import '../../utils/services_utils.dart';
import '../../widgets/custom_text_heading.dart';
import '../services/services.dart';

class WorkExDesktop extends StatefulWidget {
  const WorkExDesktop({super.key});

  @override
  State<WorkExDesktop> createState() => _WorkExDesktopState();
}

class _WorkExDesktopState extends State<WorkExDesktop> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: width / 10)
          .copyWith(bottom: height * 0.2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomSectionHeading(text: 'WORK EXPERIENCE'),
          Space.y(1.w)!,
          SizedBox(
            width: 1000.0,
            child: workexInfoStartChild(
                "Graduate Research Assistantship",
                "Indiana University - Bloomington",
                [
                  "Piloted development and CIC/CD processes of three transformative medical apps funded by the National Institute of Health (NIH), elevating healthcare accessibility by 60% and revamping patient outcomes and user accessibility.",
                  "Integrated GPS and heart rate monitoring into a stress management app, enhancing user engagement and reporting accuracy by 20%. Pioneered an Alzheimer's chatbot utilizing LLM, leading to a 40% uptick in user interactions and improved performance."
                ],
                false,
                true,
                "May 2023 - Present",
                const DecorationImage(
                  image: AssetImage("assets/logos/iuLogo.jpeg"),
                )),
          ),
          SizedBox(
            width: 1000.0,
            child: workexInfoEndChild(
                "Graduate Associate Instructor",
                "Indiana University - Bloomington",
                [
                  "Orchestrated and tutored sessions on Applied Algorithms and Cybersecurity Mathematics, enabling students to grasp intricate concepts and excel in computational and mathematical tasks.",
                  "Conducted seminars on Cryptography, DES, AES, and Cipher techniques, deepening students' grasp of cybersecurity nuances."
                ],
                false,
                false,
                "Aug 2022 – May 2023",
                const DecorationImage(
                  image: AssetImage("assets/logos/iuLogo.jpeg"),
                )),
          ),
          SizedBox(
            width: 1000.0,
            child: workexInfoStartChild(
                "Software Developer Internship",
                "Daily Dash Coop.",
                [
                  "Spearheaded agile engineering of a food delivery e-commerce app with Flutter, leveraging API Integration and CI/CD pipelines for timely and seamless updates, ensuring an 80% household reach and feedback-driven enhancements",
                  "Initiated and drove frontend UI enhancements, drawing on Swift and Java expertise, culminated in a 65% increase in application stability and enhanced user interface experience. Available on Google Play Store."
                ],
                false,
                false,
                "Nov 2020 - Apr 2021",
                const DecorationImage(
                  image: AssetImage("assets/logos/dailyDashLogo.jpeg"),
                )),
          ),
          SizedBox(
            width: 1000.0,
            child: workexInfoEndChild(
                "Junior Software Developer",
                "Daxy – The Digital Taxi Inc.",
                [
                  "Directed execution of two independent projects, leading to improved efficiency in software engineering, 30% reduction in package usage, and 10% cost savings. Available on Google Play Store.",
                  "Deployed a custom B2B e-commerce application using Flutter and MongoDB, optimizing operations and fortifying client relations."
                ],
                false,
                false,
                "Jun 2020 – Oct 2020",
                const DecorationImage(
                  image: AssetImage("assets/logos/daxyLogo.jpeg"),
                )),
          ),
          SizedBox(
            width: 1000.0,
            child: workexInfoStartChild(
                "Software Developer",
                "Ocean Transworld Logistics PVT. LTD.",
                [
                  "Transitioned traditional systems to digital e-commerce platforms leveraging Flutter, realizing 70% cutback in paper expenses.",
                  "Pioneered a route suggestion system combining AJAX, PHP, and Bootstrap, alongside an expense elevator, achieving operational efficiency with a 90% success rate and elevating sustainability efforts."
                ],
                true,
                false,
                "Jun 2019 – May 2020",
                const DecorationImage(
                  image: AssetImage("assets/logos/oceanTransworldLogo.jpeg"),
                )),
          ),
        ],
      ),
    );
  }
}
