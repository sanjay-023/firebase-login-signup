import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:usermanagement/app/data/user_model.dart';
import 'package:usermanagement/app/modules/login/views/login_view.dart';

class ProfileController extends GetxController {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel userModel = UserModel();

  // final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    getData();
  }

  void getData() {
    FirebaseFirestore.instance
        .collection("users")
        .doc(user!.uid)
        .get()
        .then((value) {
      userModel = UserModel.fromMap(value.data());
    });
    update();
  }

  void signOut() async {
    final sharedprfns = await SharedPreferences.getInstance();
    sharedprfns.clear();
    Get.offAll(LoginView());
  }
}
