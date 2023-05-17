import 'package:flutter/material.dart';

import 'details_container.dart';

class StepperTileWidget extends StatelessWidget {
  final Map<String, String> detailsData;
  const StepperTileWidget({Key? key, required this.detailsData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: DetailsContainer(
        title: detailsData['title'].toString(),
        time: detailsData['time'].toString(),
        percent:detailsData['percent'].toString(),),
    );
  }
}
