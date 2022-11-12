import 'package:remider/home/home_module.dart';

class HomeBloc {
  static void insertRemider(text) {
    HomeModule.instance.insert(text);
  }
  static void deleteRemider(text) {}

}
