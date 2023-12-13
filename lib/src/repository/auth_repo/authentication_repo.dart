import 'package:demo/src/features/auth/screens/signin/signin_screen.dart';
import 'package:demo/src/features/auth/screens/splash/splash.dart';
import 'package:demo/src/features/auth/screens/start/Ascreen.dart';
import 'package:demo/src/features/home/screen/home/Bottom.dart';
import 'package:demo/src/repository/auth_repo/expections/signup_email_password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepo extends GetxController {
  static AuthenticationRepo get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser; //declaration of  fuser
  var verificationId = ''.obs;
  @override
  void onReady() {
    // to make decission on start the app
    firebaseUser = Rx<User?>(_auth.currentUser); // initialise the f User
    firebaseUser
        .bindStream(_auth.userChanges()); //bind the changes of user with fuser
    ever(firebaseUser, _setInitialScreen); //listiner & make response
  }

  _setInitialScreen(User? user1) async {
    user1 == null ? Get.to(() => SplashSc()) : Get.offAll(() => BottomScreen());
  }

  Future<void> phoneAuthentication(String phoneNo) async {
    await _auth.verifyPhoneNumber(
        phoneNumber: phoneNo,
        verificationCompleted: (credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          if (e.code == 'invalid-phone-number') {
            Get.snackbar('Error', 'The provided phone number is not valid.');
          } else {
            Get.snackbar('Error', 'Something went wrong. Try again.');
          }
        },
        codeSent: (verificationId, resendToken) {
          this.verificationId.value = verificationId;
        },
        codeAutoRetrievalTimeout: (verificationId) {
          this.verificationId.value = verificationId;
        });
  }

  Future<bool> verifyOTP(String otp) async {
    var credentials = await _auth.signInWithCredential(
        PhoneAuthProvider.credential(
            verificationId: verificationId.value, smsCode: otp));
    return credentials.user != null ? true : false;
  }

  Future<String?> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const BottomScreen())
          : Get.offAll(() => SigninScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXEPTION - ${ex.message}');
      throw ex;
    } catch (_) {
      const ex = SignUpWithEmailAndPasswordFailure();
      print(' EXCEPTION - ${ex.message}');
      throw ex;
    }
  } //create emailp

  Future<String?> loginWithPhoneNumber(String phoneNo) async {
    try {
      await _auth.signInWithPhoneNumber(phoneNo);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  } //login emailp

  Future<void> logout() async {
    await _auth.signOut();
  }
}
