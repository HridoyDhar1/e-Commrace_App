import 'package:ecommeraceapp/app.dart';
import 'package:ecommeraceapp/data/repositories/authentication/authentication_repositry.dart';
import 'package:ecommeraceapp/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  // widgets binding //
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();
  // GetX local storage //
  await GetStorage.init();
  // Await splash until other items load //
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  // initalize firebase and authentication repository //
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then((FirebaseApp value) => Get.put(AuthenticationRepository()));
  // load  all the material design //
  runApp(const MyApp());

  // );
}
