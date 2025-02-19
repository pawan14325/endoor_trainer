import 'package:endo_trainer/core/app_sizes.dart';
import 'package:endo_trainer/core/common_components/app_background.dart';
import 'package:endo_trainer/core/common_components/app_bar.dart';
import 'package:endo_trainer/presentations/booking/booking_details_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/app_colors.dart';
import '../../core/common_components/app_tabbar.dart';

class BookingHistoryView extends StatefulWidget {
  const BookingHistoryView({super.key});

  @override
  State<BookingHistoryView> createState() => _BookingHistoryViewState();
}

class _BookingHistoryViewState extends State<BookingHistoryView>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBackground(
      appBar: myAppBar(
        title: const Text("Booking History"),
        context: context,
        bottom: myTabBar(tabController, context),
      ),
        child: TabBarView(
          controller: tabController,
          children: [
            _buildSessionList("Upcoming Sessions"),
            _buildSessionList("Ongoing Sessions"),
            _buildSessionList("Completed Sessions"),
            _buildSessionList("Cancelled Sessions"),
          ],
        ),
      );
  }

  Widget _buildSessionList(String title) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18),
              child: Text(
                title,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Divider(color: AppColors.greyColor),
            SizedBox(
              height: AppSizes.screenHeight * .68,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 15, horizontal: 18),
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>BookingDetailsView()));
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(
                                      radius: 25,
                                      backgroundColor: AppColors.greyColor,
                                    ),
                                    const SizedBox(width: 15),
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: AppSizes.screenWidth * 0.6,
                                          child: Text(
                                            "Yoga session with Richard",
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          "21 Dec . 1.39 pm",
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                const Icon(CupertinoIcons.eye,
                                    size: 20, color: AppColors.whiteColor),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(color: AppColors.greyColor),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
