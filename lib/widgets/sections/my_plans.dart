import 'package:capstone_frontend/providers/plan_provider.dart';
import 'package:capstone_frontend/widgets/cards/subscription_card.dart';
import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:go_router/go_router.dart';

class MyPlans  extends StatelessWidget {
   MyPlans ({ Key? key }) : super(key: key);
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: FutureBuilder(
            future: context.watch<PlanProvider>().getPlans(),
            builder: (context, dataSnapshot) {
              if (dataSnapshot.connectionState == ConnectionState.waiting) {
                // loading skeleton
                return const Center(
                child: CircularProgressIndicator(),
              );
              } else {
                // start of future builder
                return Consumer<PlanProvider>(
                  builder: ((context, planProvider, child) {
                  return  SizedBox(
                  height: 206,
                  child: ListView.separated(
                    itemCount: planProvider.plans.length <= 5 ?planProvider.plans.length:5,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, _) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) =>  SubscriptionCard(
                    start_date: planProvider.plans[index].start_date,
                    end_date: planProvider.plans[index].end_date,
                    trainer: planProvider.plans[index].trainer!,
                    price: planProvider.plans[index].price!,
                    onPressed: () {
                      // cancel sub button function here
                    },
                  ),
                  ),
                );
                  }));}}),
    );
  }
}

 