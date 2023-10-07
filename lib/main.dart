// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:motion/motion.dart';
import 'my_site.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Motion.instance.initialize();
  runApp(const MySite());
}

class ImageOffset {
  final Image image;
  final Offset offset;

  ImageOffset(this.image, this.offset);
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  final List<ImageOffset> positions =
      List.generate(24, (_) => ImageOffset(Image.asset("name"), Offset.zero));
  // late List<ImageOffset> positions;
  List<Image> images = [
    Image.asset(
      "assets/logos/android.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/angular.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/c.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/c++.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/css.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/dart.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/database.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/docker.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/embedcode.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/ethhicalHacker.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/git.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/github.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/html.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/java.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/js.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/kali.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/nodejs.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/postgresql.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/programmer.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/python.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/react.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/restapi.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/swift.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
    Image.asset(
      "assets/logos/vscode.png",
      opacity: const AlwaysStoppedAnimation<double>(0.15),
    ),
  ];

  void moveBoxes() {
    var random = Random();
    for (var i = 0; i < positions.length; i++) {
      double newXPos =
          random.nextInt(MediaQuery.of(context).size.width as int) as double;
      double newYPos =
          random.nextInt(MediaQuery.of(context).size.height as int) as double;
      positions[i] = ImageOffset(images[i], Offset(newXPos, newYPos));
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 10), (Timer t) => moveBoxes());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    moveBoxes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: positions.map((position) {
          return AnimatedPositioned(
            duration: const Duration(seconds: 10),
            curve: Curves.fastOutSlowIn,
            left: position.offset.dx,
            top: position.offset.dy,
            child: SizedBox(
              width: 75.0,
              height: 75.0,
              child: position.image,
            ),
          );
        }).toList(),
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Web Glow Cursor',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: CursorGlowPage(),
//     );
//   }
// }

class CursorGlowPage extends StatefulWidget {
  final Widget child;
  const CursorGlowPage({super.key, required this.child});

  @override
  State<CursorGlowPage> createState() => _CursorGlowPageState();
}

class _CursorGlowPageState extends State<CursorGlowPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
      ],
    );
  }
}
