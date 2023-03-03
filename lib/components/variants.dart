import 'package:flutter/material.dart';
import 'package:game_test_uiful/constants/app_colors.dart';
import 'package:game_test_uiful/models/question.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
    required this.jooptor,
    required this.onTap,
  });
  final List<Joop> jooptor;
  final Function(bool) onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: GridView.builder(
        itemCount: 4,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.1,
        ),
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(6),
            color: AppColors.inActiv,
            child: InkWell(
              onTap: () {
                onTap(jooptor[index].isTrue);
              },
              child: Center(
                child: Text(
                  jooptor[index].text,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
