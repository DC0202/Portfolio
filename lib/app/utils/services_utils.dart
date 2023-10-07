import 'package:motion/motion.dart';

MotionController mc1 = MotionController();
MotionController mc2 = MotionController();
MotionController mc3 = MotionController();
MotionController mc4 = MotionController();

class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
  final MotionController motionController;

  ServicesUtils({
    required this.name,
    required this.icon,
    required this.description,
    required this.tool,
    required this.motionController,
  });
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Mobile & Web App Development',
    icon: 'assets/imgs/mobilewebdev.svg',
    description:
        "I'm crafting cross-platform solutions optimized for both mobile and web environments, adhering to best practices in each domain.",
    tool: [
      'Android (Kotlin or Java)',
      'iOS (Swift & Objective-C)',
      'React Native',
      'React (HTML, CSS, JS)',
      'Angular'
    ],
    motionController: mc1,
  ),
  ServicesUtils(
    name: 'Flutter\nDevelopment',
    icon: 'assets/imgs/flutter1.svg',
    description:
        "I'm developing fluid cross-platform applications using Flutter, ensuring consistent performance and design on both iOS and Android.",
    tool: [
      'Flutter (Dart)',
      'API Integration',
      'GPS & SDK Integration',
      'Java & Swift Native Coding',
      'Developed 3 NIH funded Health Care Apps and 3 Corporate Level Solutions',
      'Custom Animations'
    ],
    motionController: mc2,
  ),
  ServicesUtils(
    name: 'Software\nDevelopment',
    icon: 'assets/icons/graphic.svg',
    description:
        " I'm crafting efficient code tailored to your requirements following best programming practices.",
    tool: [
      'Python, Java, C, C++, C#, Bash, PHP, JS',
      'dB: PostgresSQL, MySQL, OracleDB, MongoDB, Firebase, Cassandra, Neo4j',
      'CI/CD Pipelines, DevOps, API Creations',
      'ChatBot - LLM',
      'Debugging, Testing'
    ],
    motionController: mc3,
  ),
  ServicesUtils(
    name: 'Cybersecurity Analyst & Ethical Hacker',
    icon: 'assets/icons/website.svg',
    description:
        "I'm safeguarding digital assets by identifying vulnerabilities and fortifying defenses, operating within ethical hacking guidelines.",
    tool: [
      'Wireshark, Malware Analysis, Vulnerability Management, Network Security, TCP/IP, DNS, DHCP, Routing / Switching, IAM, IDA PRO, Ghidra, Metasploit',
      'Practiced OWASP Webgoat',
      'SQL Injection and its Mitigation Techniques',
      'Cross Site Scripting',
      'Steganography',
    ],
    motionController: mc4,
  ),
];
