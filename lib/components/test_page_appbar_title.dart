import 'package:flutter/material.dart';
import 'package:game_test_uiful/constants/app_colors.dart';

class TestPageAppbar extends StatelessWidget {
  const TestPageAppbar({
    super.key,
    required this.tuurajooptor,
    required this.katajooptor,
  });
  final int tuurajooptor;
  final int katajooptor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            child: Row(
              children: [
                Text(
                  '$katajooptor',
                  style: const TextStyle(color: AppColors.red, fontSize: 17),
                ),
                // Icon(Icons.tips_and_updates, color: AppColors.yellow),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text("RES",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                ),
                Text(
                  '$tuurajooptor',
                  style: const TextStyle(color: AppColors.grean, fontSize: 17),
                ),
                // Icon(Icons.add_circle, color: AppColors.grean)
              ],
            ),
          ),
        ),
        Text('3'),
        Row(
          children: [
            SizedBox(
              width: 70,
              height: 30,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return const Icon(Icons.favorite, color: AppColors.red);
                  }),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.more_vert),
          ],
        ),
      ],
    );
  }
}
