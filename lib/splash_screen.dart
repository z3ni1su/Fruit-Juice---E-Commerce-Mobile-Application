import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:project2group1/home_screen.dart';
import 'colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin  {
  late AnimationController _controller;
  late Animation<double> _opacity;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1300),
    );

    _opacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _controller, curve: const Interval(.5, 1)),
    )..addListener(() {
      setState(() {});
    });
    // Always repeat animation
    _controller.repeat();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: DesignColors.backColor,
        child: Stack(
          children: [
            Positioned(
              bottom: -250,
              child: Container(
                width: size.width,
                height: size.width + 250,
                decoration: const BoxDecoration(
                    gradient: RadialGradient(radius: 0.65, colors: [
                      DesignColors.foreColor,
                      DesignColors.backColor,
                    ])),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                width: size.width,
                child: AnimatedOpacity(
                  opacity: _opacity.value,
                  duration: const Duration(milliseconds: 820),
                  child: Image.asset(
                    "assets/glass.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: const EdgeInsets.only(top: 40),
                height: size.height / 2,
                child: Column(
                  children: [
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: "SAVE WATER\nDRINK ALCOHOL",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 37.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 20,),
                    RichText(
                      textAlign: TextAlign.center,
                      text: const TextSpan(
                          text: "Trust me you can dance. \n- Vodka",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14)),
                    ),
                    const Spacer(),
                    GestureDetector(
                      behavior: HitTestBehavior.translucent,
                      onVerticalDragUpdate: (details) {
                        int sensitivity = 8;
                        if(details.delta.dy < -sensitivity){
                          Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: const HomeScreen()));
                        }
                      },
                      child: AbsorbPointer(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Opacity(
                                opacity: _opacity.value,
                                child: const Icon(
                                  CommunityMaterialIcons.chevron_double_up,
                                  color: Colors.white,
                                  size: 50,
                                ),
                              ),
                            ),
                            RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                  text: "Get Started",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16)),
                            ),
                            const SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
