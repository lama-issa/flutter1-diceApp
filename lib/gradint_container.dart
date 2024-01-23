import 'package:flutter/material.dart';
import 'package:appp/dice_roller.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// buliding custom widgets
class GradintContainer extends StatelessWidget {
 const GradintContainer(this.color1, this.color2,
      {super.key}); //constructor function , color1,color2:postional parameter by default is required

 const GradintContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
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


// // buliding custom widgets
// class GradintContainer extends StatelessWidget {
//   const GradintContainer(
//       {super.key, required this.colors}); //constructor function , this.colors:named parameter
//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText('hello'),
//       ),
//     );
//   }
// }
