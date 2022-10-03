import 'package:flight_booking_app/app/Home/view/widgets/textform_widget.dart';
import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flight_booking_app/app/core/styles/images.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flight_booking_app/app/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: kHeight / 2.7,
              width: kWidth,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  ContainerImageWidget(
                    kWidth: kWidth,
                    kHeight: kHeight,
                    image: ImagesFiles.kBackroundImage,
                    boxFit: BoxFit.fill,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: TabTextforms(
                          innerColor: AppColor.kPrimary1!,
                          icon: Icons.search,
                          color: AppColor.kWhite,
                          text: 'Search Flights',
                          obscureText: false,
                          vertical: 5,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: kHeight / 3.3,
                    left: 0,
                    child: Container(
                      width: kWidth,
                      height: kHeight,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 224, 224),
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: kHeight / 5.5,
                    left: 0,
                    right: 0,
                    child: ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(
                              height: 10,
                            ),
                        itemCount: 4,
                        physics: const ScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 8),
                            child: Material(
                              shadowColor: AppColor.kBlack,
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: kWidth,
                                height: kHeight / 6.5,
                                decoration: BoxDecoration(
                                  color: AppColor.kWhite,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        'Bussiness Trip To Newyork',
                                        style: AppTextStyles.h2,
                                      ),
                                    ),
                                    Row(
                                      children: [],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
