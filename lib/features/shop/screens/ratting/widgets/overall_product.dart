import 'package:flutter/material.dart';

import 'rating_progress.dart';

class TOverallProductRating extends StatelessWidget {
  const TOverallProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 3,
            child: Text(
              "4.5",
              style: Theme.of(context).textTheme.displayLarge,
            )),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              TRaingProgressBar(
                text: '5',
                value: 1.0,
              ),
              TRaingProgressBar(
                text: '4',
                value: 0.8,
              ),
              TRaingProgressBar(
                text: '3',
                value: 0.6,
              ),
              TRaingProgressBar(
                text: '2',
                value: 0.4,
              ),
            ],
          ),
        )
      ],
    );
  }
}
