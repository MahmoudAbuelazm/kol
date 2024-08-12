
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../resources/colors/color_palette.dart';
import '../../../../resources/styles/text_styles.dart';

class RangeSliderData extends StatefulWidget {
  const RangeSliderData({
    super.key,
  });

  @override
  State<RangeSliderData> createState() => _RangeSliderDataState();
}

class _RangeSliderDataState extends State<RangeSliderData> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("\$${_currentRangeValues.start.round()}",
                style: TextStyles.raleway700_12.copyWith(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                )),
            Text("—",
                style: TextStyles.raleway700_12.copyWith(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                )),
            Text("\$${_currentRangeValues.end.round()}",
                style: TextStyles.raleway700_12.copyWith(
                  fontSize: 19.sp,
                  fontWeight: FontWeight.w500,
                )),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: ColorPalette.white,
            activeTrackColor: ColorPalette.darkpink,
            disabledActiveTrackColor: ColorPalette.darkpink,
            disabledInactiveTrackColor: ColorPalette.lightred,
            inactiveTrackColor: ColorPalette.lightred,
            trackHeight: 4,
            thumbShape: const RoundSliderThumbShape(
                disabledThumbRadius: 100,
                elevation: 10,
                enabledThumbRadius: 100),
            overlayColor: ColorPalette.white.withOpacity(0.2),
          ),
          child: RangeSlider(
            values: _currentRangeValues,
            max: 300,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
        ),
      ],
    );
  }
}
