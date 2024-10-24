import 'package:flutter/material.dart';

import '../../../../../utils/constants/color.dart';
import '../../../../../utils/device/device_utillity.dart';

class TRaingProgressBar extends StatelessWidget {
  const TRaingProgressBar({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            )),
        Expanded(
            flex: 11,
            child: SizedBox(
              width: TDeviceUtils.getScreenWidth() * 0.8,
              child: LinearProgressIndicator(
                value: value,
                minHeight: 11,
                backgroundColor: TColors.grey,
                borderRadius: BorderRadius.circular(7),
                valueColor: const AlwaysStoppedAnimation(TColors.primary),
              ),
            )),
      ],
    );
  }
}
