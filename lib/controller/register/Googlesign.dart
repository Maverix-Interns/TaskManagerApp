import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class GoogleSignInController extends GetxController {
  final GoogleSignIn googleSignIn = GoogleSignIn();

  Future<void> signIn() async {
    const url = 'https://accounts.google.com/signin';

    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      print('Could not launch $url');
    }
  }
}

class GoogleSignInAuthentication {}

class GoogleSignInAccount {
  get authentication => null;

  get displayName => null;
}

class GoogleSignIn {
  signIn() {}
}
