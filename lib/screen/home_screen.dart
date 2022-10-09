import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/gender_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GenderProvider _text = Provider.of<GenderProvider>(context);
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender Picker",
                style: TextStyle(
                  fontSize: 29,
                  fontWeight: FontWeight.bold,
                  color: _text.color,
                )),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _text.isMale = true;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _text.maleColor,
                        ),
                      ),
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/icon_male.png',
                            height: 80,
                            width: 40,
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _text.maleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      _text.isMale = false;
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: _text.femaleColor,
                        ),
                      ),
                      height: 150,
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/icon_female.png',
                            height: 80,
                            width: 40,
                          ),
                          Text(
                            "Female",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: _text.femaleColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
