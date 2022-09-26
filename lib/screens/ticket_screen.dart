import 'package:booking/screens/ticket_view.dart';
import 'package:booking/utils/app_info_list.dart';
import 'package:booking/utils/app_layout.dart';
import 'package:booking/utils/app_styles.dart';
import 'package:booking/widgets/tabs.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: AppLayout.getWidtht(20),
          vertical: AppLayout.getHeight(20),
        ),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text(
            "Tickets",
            style: Styles.headLineStyle1.copyWith(fontSize: 35),
          ),
          Gap(AppLayout.getHeight(10)),
          const AppTabs(tab1: "Upcoming", tab2: "Previous"),
          Gap(AppLayout.getHeight(20)),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.all(10),
            child: Column(
              children: ticketList
                  .map((e) => Column(
                        children: [
                          TicketView(ticket: e),
                          Gap(AppLayout.getHeight(20)),
                          Padding(
                            padding:
                                EdgeInsets.only(left: AppLayout.getWidtht(10)),
                            child: TicketView(
                              ticket: e,
                              isColored: true,
                            ),
                          ),
                        ],
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
