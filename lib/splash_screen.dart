import 'package:flutter/material.dart';
import 'package:masoud_oil/images_manger.dart';
import 'package:masoud_oil/routes_manager.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final Duration _duration = const Duration(seconds: 4);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(_duration, () {
      Navigator.pushReplacementNamed(context, Routes.mainRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.05,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Image.asset(
            ImageManger.splash,
            fit: BoxFit.fill,
            width: MediaQuery.of(context).size.width * 0.35,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.03),
          Text(
            'Masoud Oil',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.1,
              color: Colors.yellow.shade800,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          const CircularProgressIndicator(),
          const Spacer(),
          Text(
            'اول ابليكشين في مصر لخدمات الزيوت والفلاتر للسيارات',
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width * 0.045,
              color: Colors.grey.shade600,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: MediaQuery.of(context).size.height * 0.04),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImageManger.splashLogo1,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.20,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo2,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo3,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo4,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImageManger.splashLogo5,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo6,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo7,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              Image.asset(
                ImageManger.splashLogo8,
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width * 0.2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
