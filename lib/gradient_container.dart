import 'package:flutter/material.dart';
import 'package:flutter_application_1/styled_text.dart';

var startAlignment = Alignment.topRight;
var endAlignment = Alignment.bottomRight;

/// *********************named argument****************************************
// class GradientContainer extends StatelessWidget {
//   GradientContainer( {super.key, required this.colorsList,});

//   List<Color> colorsList;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colorsList,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('hello world'),
//       ),
//     );
//   }
// }
class GradientContainer extends StatelessWidget {
  GradientContainer(
    this.colorsList, {
    super.key,
  });
  final List<Color> colorsList;

  var activeDiceImage = 'assets/dice-images/dice-1.png';

  void rolldice() {
    activeDiceImage = 'assets/dice-images/dice-3.png';
    print('clickeed');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colorsList,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                // padding: const EdgeInsets.only(top: 20),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text('Roll Dice'),
            ),
          ],
        ),
      ),
    );
  }
}
