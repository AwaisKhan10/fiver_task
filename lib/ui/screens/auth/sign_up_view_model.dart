// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:furr_app/core/view_model/base_view_model.dart';

class SignUpViewModel extends BaseViewModel {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // final authService = AuthService();
  // final _dbServices = DataBaseServices();
  // AppUser appUser = AppUser();
  // CustomAuthResult customAuthResult = CustomAuthResult();
  bool passswordVisibilty = true;
  bool passswordVisibilty2 = true;
  // bool isShow = false;
  // File? _pickedImage;
  // bool get isImagePicked => _pickedImage != null;

  // File? _pickImage;
  // final _filePicker = FilePickerService();

  // final firebaseStorage = FirebaseServiceStorage();

  togglePasswordVisibility() {
    passswordVisibilty = !passswordVisibilty;
    notifyListeners();
  }

  togglePasswordVisibility2() {
    passswordVisibilty2 = !passswordVisibilty2;
    notifyListeners();
  }

  // Future<void> signUpWithEmail() async {
  //   setState(ViewState.busy);

  //   // Assign any additional user details here
  //   appUser.id = authService.appUser.id;

  //   customAuthResult = await authService.signUpWithEmailPassword(appUser);
  //   if (customAuthResult.user != null) {
  //     await _dbServices.registerAppUser(appUser);
  //     Get.to(SignInScreen());
  //   }

  //   setState(ViewState.idle);
  // }

  // ///
  // /// Profile image
  // ///
  // /// pick image and upload
  // ///

  // Future<void> profileImage() async {
  //   final pickedImage = await _filePicker.pickImageWithCompression();
  //   if (pickedImage != null) {
  //     _pickedImage = pickedImage;
  //     notifyListeners();

  //     setState(ViewState.busy);
  //     try {
  //       final imageUrl =
  //           await firebaseStorage.uploadImage(_pickedImage!, "User Profile");
  //       authService.appUser.imgUrl = imageUrl;
  //       appUser.imgUrl = imageUrl; // Also update appUser instance
  //       print("Image URL: ${authService.appUser.imgUrl}");
  //     } catch (e) {
  //       print('Error uploading image: $e');
  //     } finally {
  //       setState(ViewState.idle);
  //     }
  //   } else {
  //     print('No image selected');
  //   }
  // }
}
