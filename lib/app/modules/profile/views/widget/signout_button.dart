import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:usermanagement/app/modules/profile/controllers/profile_controller.dart';

class SignoutButton extends StatelessWidget {
  const SignoutButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final profileController = Get.put(ProfileController());
    return ElevatedButton(
        onPressed: () {
          //checkLogin(context);
          profileController.signOut();
        },
        child: Text("Sign out"),
        style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 244, 4, 4),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            minimumSize: const Size(180, 40)));
  }
}
