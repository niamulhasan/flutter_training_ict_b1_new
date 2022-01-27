// enum Theme {
//   light,
//   dark,
//   green
// }

// void main(){

//   Theme x = Theme.light;
//   if(x == Theme.dark){

//   }

// }

mixin Helper {
  void calculateAge() {}
}

mixin ProfilePictureHelper {
  void upload() {}
}

class User {}

class UserHelper {}

class Admin extends User with Helper, ProfilePictureHelper {}

void main() {
  Admin ad1 = Admin();
  ad1.upload();
}
