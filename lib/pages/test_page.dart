import 'package:flutter/material.dart';
import 'package:game_test_uiful/components/test_page_appbar_title.dart';
import 'package:game_test_uiful/components/test_slaider.dart';
import 'package:game_test_uiful/components/variants.dart';
import 'package:game_test_uiful/constants/app_colors.dart';
import 'package:game_test_uiful/models/question.dart';

class TestPage extends StatefulWidget {
  TestPage({
    super.key,
    required this.guestion,
  });
  final List<Guestion> guestion;

  @override
  State<TestPage> createState() => _TestPageState();
}

int index = 0;
int tuurajooptor = 0;
int katajooptor = 0;
Color color = Colors.green;

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
          foregroundColor: AppColors.black,
          backgroundColor: AppColors.bgColor,
          title: TestPageAppbar(
            katajooptor: katajooptor,
            tuurajooptor: tuurajooptor,
          ),
          elevation: 0),
      body: Column(
        children: [
          TestSlaider(
            value: index,
            color: color,
          ),
          Expanded(
            child: Center(
              child: Text(
                '${widget.guestion[index].text}',
                style: const TextStyle(
                  fontSize: 50,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Image.asset(
                  'assets/images/capitals/${widget.guestion[index].image}.jpeg'),
            ),
          ),
          const SizedBox(height: 10),
          Variants(
            jooptor: widget.guestion[index].jooptor,
            onTap: (istrue) {
              if (index + 1 == widget.guestion.length) {
                return showDialog<String>(
                  context: context,
                  barrierDismissible: false, // user must tap button!
                  builder: (BuildContext context) => AlertDialog(
                    backgroundColor: AppColors.white,
                    title: Text('Bul sizdin test jyintygynyz'),
                    content:
                        Text('Tuura: $tuurajooptor\nkata Kata: $katajooptor'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('janydan bashto'),
                        onPressed: () {
                          index = 0;
                          katajooptor = 0;
                          tuurajooptor = 0;
                          setState(
                            () {
                              Navigator.pop(context);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                );
              } else {
                if (istrue == true) {
                  tuurajooptor++;
                } else {
                  katajooptor++;
                }
                setState(() {
                  index++;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
