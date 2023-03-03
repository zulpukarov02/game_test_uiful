import 'package:flutter/material.dart';
import 'package:game_test_uiful/constants/app_colors.dart';
import 'package:game_test_uiful/pages/test_page.dart';

class TestSlaider extends StatelessWidget {
  TestSlaider({
    super.key,
    required this.value,
    required this.color,
  });
  final int value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 23),
      child: SliderTheme(
        data: SliderThemeData(
            trackHeight: 5,
            overlayShape: SliderComponentShape.noOverlay,
            thumbShape: SliderComponentShape.noThumb,
            trackShape: const RectangularSliderTrackShape()),
        child: Slider(
          min: 0.0,
          max: 10.0,
          value: value.toDouble(),
          activeColor: color,
          inactiveColor: AppColors.inActiv,
          onChanged: (value) {},
        ),
      ),
    );
  }
}
