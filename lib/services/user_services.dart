

import 'package:al_madina/components/constent.dart';
import 'package:al_madina/models/user.dart';

class UserServices {

  String users= "users";

  void createUser({String id, String name, String email}) {
    firebaseFirestore
        .collection(users)
        .doc(id)
        .set({"name": name, "id": id, "email": email});
  }

  void updateUser(Map<String, dynamic> values) {
    firebaseFirestore
        .collection(users)
        .doc(values['id'])
        .update(values);
  }

  Future<UserModel> getUserById(String id) =>
      firebaseFirestore.collection(users).doc(id).get().then((doc) {
        return UserModel.fromSnapshot(doc);
      });
}
