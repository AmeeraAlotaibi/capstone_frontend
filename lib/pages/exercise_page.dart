// import 'package:capstone_frontend/providers/category_provider.dart';
// import 'package:capstone_frontend/widgets/cards/exercise_card.dart';
// import 'package:capstone_frontend/widgets/skeleton_loading/gridview_loading.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:go_router/go_router.dart';
// import 'package:video_player/video_player.dart';
// // import 'video_player';

// class ExercisesListPage extends StatelessWidget {
//   final int categoryId;
//   ExercisesListPage({Key? key, required this.categoryId}) : super(key: key);
//   var controller = ScrollController();
//   VideoPlayerController controler;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Exercise Page"),
//         actions: [
//           IconButton(
//             onPressed: () {
//               const double value = 0;
//               // to jump to the start of the grid view, has animations
//               controller.animateTo(
//                 value,
//                 curve: Curves.easeOut,
//                 duration: const Duration(milliseconds: 500),
//               );
//             },
//             icon: const Icon(Icons.arrow_upward_rounded),
//           ),
//         ],
//       ),
//       body: VideoPlayerController
//     );
//   }
// }
