import 'package:flight_booking_app/app/core/styles/images.dart';
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
              ContainerImageWidget(
                kWidth: kWidth,
                kHeight: kHeight / 2,
                image: ImagesFiles.kPassengers,
                boxFit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerImageWidget extends StatelessWidget {
  const ContainerImageWidget(
      {Key? key,
      required this.kWidth,
      required this.kHeight,
      required this.image,
      required this.boxFit})
      : super(key: key);

  final double kWidth;
  final double kHeight;
  final String image;
  final BoxFit boxFit;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kWidth,
      height: kHeight,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            image,
          ),
          fit: boxFit,
        ),
      ),
    );
  }
}
