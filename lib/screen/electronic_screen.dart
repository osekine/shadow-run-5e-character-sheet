// import 'package:flutter/material.dart';

// import '../model/character_model.dart';
// import '../model/info.dart';
// import '../utility/text_widgets.dart';
// import '../widget/electronic_widget.dart';

// class ElectronicScreen extends StatelessWidget {
//   const ElectronicScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final character = CharacterProvider.of(context);
//     final devices = character.devices;
//     final initiative = InitiativeModel(model: character);
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               BigText(text: 'ДР. инициатива: ${initiative.AR}'),
//               BigText(text: 'Колд-сим инициатива: ${initiative.coldSim}'),
//               BigText(text: 'Хот-сим инициатива: ${initiative.hotSim}'),
//             ],
//           ),
//         ),
//         Expanded(
//             child: ListView.builder(
//                 itemCount: devices.length,
//                 itemBuilder: (context, index) =>
//                     ElectronicWidget(model: devices[index]))),
        
//       ],
//     );
//   }
// }