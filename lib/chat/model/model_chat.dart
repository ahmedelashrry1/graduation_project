// import 'package:graduation_project/chat/model/user_model.dart';

// class ChatModel {
//   String id;
//   List<UserModel> users;
//   List<String> usersId;
//   List<dynamic> chat;

//   ChatModel({
//     required this.id,
//     required this.users,
//     required this.usersId,
//     required this.chat,
//   });

//   // Constructor لتحويل JSON إلى كائن ChatModel
//   factory ChatModel.fromJson(Map<String, dynamic> map) {
//     return ChatModel(
//       id: map['id'] ?? '', // تأكد من عدم وجود قيم null
//       users: (map['users'] as List<dynamic>)
//           .map((e) => UserModel.fromJson(e))
//           .toList(),
//       usersId: List<String>.from(map['users_id'] ?? []), // تأكد من عدم وجود قيم null
//       chat: List<dynamic>.from(map['chat'] ?? []), // تأكد من عدم وجود قيم null
//     );
//   }

//   // تحويل الكائن إلى JSON
//   Map<String, dynamic> toJson() {
//     return {
//       'id': id,
//       'users': users.map((e) => e.toJson()).toList(),
//       'users_id': usersId,
//       'chat': chat,
//     };
//   }
// }
