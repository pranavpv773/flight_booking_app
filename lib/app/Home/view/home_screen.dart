import 'package:flight_booking_app/app/Home/view/widgets/card_form.dart';
import 'package:flight_booking_app/app/core/styles/colors.dart';
import 'package:flight_booking_app/app/core/styles/images.dart';
import 'package:flight_booking_app/app/core/styles/styles.dart';
import 'package:flight_booking_app/app/splash/view/splash_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final kWidth = MediaQuery.of(context).size.width;
    final kHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(241, 255, 254, 254),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
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
                  ),
                  Positioned(
                    top: kHeight / 14,
                    left: 25,
                    child: SizedBox(
                      width: kWidth / 1.5,
                      height: kHeight / 3,
                      child: Text(
                        "Let's Book Your Flight ✈️",
                        style: AppTextStyles.h1,
                      ),
                    ),
                  ),
                  Positioned(
                    top: kHeight / 14,
                    right: 25,
                    child: CircleAvatar(
                      radius: 15,
                      child: Image.asset(ImagesFiles.kAvathar),
                    ),
                  ),
                  Positioned(
                    top: kHeight / 4.5,
                    left: 50,
                    right: 50,
                    child: TabBarCardWidget(
                      kHeight: kHeight,
                      kWidth: kWidth,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              child: Padding(
                padding: EdgeInsets.only(top: kHeight / 6, right: 16, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const RowListWidget(),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return CardBuilderWidget(
                          kWidth: kWidth,
                          kHeight: kHeight,
                          actionText: 'Book Now',
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                      itemCount: 14,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardBuilderWidget extends StatelessWidget {
  const CardBuilderWidget({
    Key? key,
    required this.kWidth,
    required this.kHeight,
    required this.actionText,
  }) : super(key: key);

  final double kWidth;
  final double kHeight;
  final String actionText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      child: Container(
        width: kWidth,
        height: kHeight / 2.8,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: kWidth,
                height: kHeight / 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(
                    image: AssetImage(ImagesFiles.kFlight),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 60,
                        height: 30,
                        decoration: BoxDecoration(
                          color: AppColor.kBlack,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '\$150',
                            style: TextStyle(color: AppColor.kWhite),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Flight Yogyakarta',
                    style: AppTextStyles.h2,
                  ),
                  Text(
                    'HJB-JKM',
                    style: AppTextStyles.h3,
                  )
                ],
              ),
            ),
            Divider(
              height: 2,
              color: AppColor.kGrey,
              indent: 15,
              endIndent: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.av_timer_outlined,
                  color: AppColor.kPrimary1,
                ),
                Text(
                  '10:00 AM-12:00 PM',
                  style: AppTextStyles.h3,
                ),
                TextButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        actionText,
                        style: TextStyle(
                          color: AppColor.kPrimary,
                        ),
                      ),
                      Icon(
                        Icons.arrow_right,
                        color: AppColor.kPrimary,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RowListWidget extends StatelessWidget {
  const RowListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Sort By',
          style: AppTextStyles.h5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: BoxDecoration(
              color: AppColor.kWhite,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_drop_down,
                color: AppColor.kPrimary,
              ),
              items: items
                  .map((value) => DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                          style: AppTextStyles.h5,
                        ),
                      ))
                  .toList(),
              onChanged: (value) {},
              isExpanded: false,
              value: items.first,
            ),
          ),
        ),
      ],
    );
  }
}

List items = ['Highest Prize', 'Lowest Prize', 'Normal Prize'];

class TabBarCardWidget extends StatelessWidget {
  const TabBarCardWidget({
    Key? key,
    required this.kHeight,
    required this.kWidth,
  }) : super(key: key);

  final double kHeight;
  final double kWidth;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(15),
      elevation: 5,
      shadowColor: AppColor.kBlack,
      child: Container(
        height: kHeight / 3.5,
        width: 280,
        decoration: BoxDecoration(
          color: AppColor.kWhite,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Expanded(
          flex: 4,
          child: DefaultTabController(
            length: 3,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 232, 231, 231),
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: AppColor.kPrimary1,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelStyle: AppTextStyles.h5,
                    labelColor: AppColor.kWhite,
                    unselectedLabelColor: AppColor.kBlack,
                    tabs: const [
                      Tab(text: "One-Way"),
                      Tab(
                        text: "Round-Trip",
                      ),
                      Tab(
                        text: "Multi-City",
                      )
                    ],
                  ),
                ),
                const Expanded(
                  flex: 12,
                  child: TabBarView(
                    physics: BouncingScrollPhysics(),
                    children: [
                      CardForm(),
                      CardForm(),
                      CardForm(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
