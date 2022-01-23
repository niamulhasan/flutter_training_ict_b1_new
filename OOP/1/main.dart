import 'MainMenu.dart';
import 'Router.dart';

void main() {
  String? choice = MainMenu.show();
  Router.route(choice);
}
