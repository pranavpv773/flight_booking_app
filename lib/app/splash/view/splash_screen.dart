import 'package:flight_booking_app/app/core/images.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flight_booking_app/app/core/widgets/buttons.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: kWidth,
        height: kHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: const ColorFilter.mode(
                Color.fromARGB(255, 8, 230, 86), BlendMode.saturation),
            image: AssetImage(
              ImagesFiles.kBackroundImage,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Find And Book',
                      style: AppTextStyles.h1,
                    ),
                    Text(
                      'A Great Experience',
                      style: AppTextStyles.h1,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        'Going Forward after a pandamic that devasted airline industry',
                        style: AppTextStyles.h3,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 24.0),
                      child: ButtonWidget(),
                    ),
                  ],
                ),
              ),
              Container(
                width: kWidth,
                height: kHeight / 2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImagesFiles.kPassengers,
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
