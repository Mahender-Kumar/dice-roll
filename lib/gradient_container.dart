import 'package:flutter/material.dart';
import 'package:flutter_application_1/dice_roller.dart';

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
  const GradientContainer(
    this.colorsList, {
    super.key,
  });
  final List<Color> colorsList;

 

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
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
