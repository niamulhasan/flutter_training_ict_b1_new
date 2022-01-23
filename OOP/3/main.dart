import 'Admin.dart';
import 'User.dart';

void main() {
  var admin1 = Admin("akkas", "akkas@amail.com", "1234", "super");

  print(admin1.login());
}
