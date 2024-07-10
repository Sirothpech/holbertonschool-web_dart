
# Project badge

## Dart - Classes


## Resources
- Dart Programming - Classes
- Dart Inheritance
- Null-aware Operators in Dart

## Tasks

### 0. Welcome.
**mandatory**
Create a User class:

- That contains a property called name
- and a method called showName that returns a string representation of User "Hello name"

```dart
import '0-class.dart';

void main() {
  final firstPer = User();
  firstPer.name = "Youssef Belhadj";
  print(firstPer.showName());
}
```

Output:
```
Hello Youssef Belhadj
```

### 1. User to Json
**mandatory**
Create a User class:

Properties :

- name : String
- age : int
- height: double

And a method called toJson() that returns a map representation of the User .

```dart
import '1-usertojson.dart';

void main() {
  final user = User(name: "Youssef", age: 25, height: 1.89);
  print(user.toJson());
}
```

Output:
```
{name: Youssef, age: 25, height: 1.89}
```

### 2. Password
**mandatory**
Create a class called Password and give it a string property called password.

Add a method to Password called isValid that returns true only if:

- The length of password should be between 8 and 16.
- Password should contain both uppercase and lowercase letters.
- Password should contain numbers.

Override the toString method of Password class to prints Your Password is: ShouldWorkf7ne.

```dart
import '2-password.dart';

void main() {
  final ps = Password();
  ps.password = "Just3z";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");

  ps.password = "ShouldWorkf7ne";
  if (ps.isValid() == true)
    print("${ps.password} is a Valid Password");
  else
    print("${ps.password} is Not a Valid Password");
  print("${ps.toString()}");
}
```

Output:
```
Just3z is Not a Valid Password
Your Password is: Just3z
ShouldWorkf7ne is a Valid Password
Your Password is: ShouldWorkf7ne
```

### 3. Private Password
**mandatory**
Copy the last task and make the property password private.

```dart
import '3-private_password.dart';

void main() {
  final ps = Password(password: "Passwordcode");
  print(ps.toString());
  print(ps.isValid());

  final ps2 = Password(password: "PasswordDecode3");
  print(ps2.toString());
  print(ps2.isValid());
}
```

Output:
```
Your Password is Passwordcode
false
Your Password is PasswordDecode3
true
```

### 4. Mutables
**mandatory**
Lets make our data mutable now. Copy the code from the last task and add the Getters and Setters so we can assign and retrieve the value.

Should use get keyword for the getter.
Should use set keyword for the setter.

```dart
import '4-mutables.dart';

void main() {
  final password = Password(password: "Passwordecode");
  print(password.isValid());
  print(password.toString());

  password.password = "Youssef4321";
  print(password.isValid());
  print(password.toString());
}
```

Output:
```
false
Your Password is: Passwordecode
true
Your Password is: Youssef4321
```

### 5. Json to User
**mandatory**
Copy the code that you did in the 1-usertojson.dart add property called id to the User class

Add id to toJson() method
Create a new instance called fromJson it accept Map as parameter should return every value inside it.

Prototype :
static User fromJson(Map<dynamic, dynamic> userJson)
Create a method called toString() that returns a string => User(id : id ,name: name, age: age, height: height);

```dart
import '5-json_to_user.dart';

void main() {
  final djo = User(id: 1, name: "Djo", age: 25, height: 1.89);
  print(djo.toJson());

  Map map = {'id': 3, 'name': 'Youssef', 'age': 26, 'height': 1.9};
  final youssef = User.fromJson(map);
  print(djo.toString());
  print(youssef.toString());
}
```

Output:
```
{id: 1, name: Djo, age: 25, height: 1.89}
User(id : 1 ,name: Djo, age: 25, height: 1.89)
User(id : 3 ,name: Youssef, age: 26, height: 1.9)
```

### 6. Inheritance
**mandatory**
Copy the class Password from 4-mutables.dart -> 6-password.dart:

Copy the last task and extend the Password class to User

Create a new property in the User class called user_password that contain the password.

Add null check to all targets in 6-password.dart and null coalescing operator if necessary.

Call isValid method from Password class after you passed user_password to Password class.

```dart
import '6-inheritance.dart';

void main() {
  final djo = User(
      id: 1, name: "Djo", age: 25, height: 1.89, user_password: "Azert23defde");
  print('<===========Json=========>:');
  print('\n');
  print(djo.toJson());

  Map map = {
    'id': 3,
    'name': 'Youssef',
    'age': 26,
    'height': 1.9,
    'user_password': "Azert23defde"
  };
  final youssef = User.fromJson(map);
  print('\n');
  print('<===========Test1===========>:');
  print('\n');
  print(djo.toString());
  print(youssef.toString());
  print('\n');
  print('<===========Test2===========>:');
  print('\n');
  djo.user_password = "holberton98";
  youssef.user_password = "AZERfghn6789";
  print(djo.toString());
  print(youssef.toString());
}
```

Output:
```
<===========Json=========>:

{id: 1, name: Djo, age: 25, height: 1.89}


<===========Test1===========>:

User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: true)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)


<===========Test2===========>:

User(id : 1 ,name: Djo, age: 25, height: 1.89, Password: false)
User(id : 3 ,name: Youssef, age: 26, height: 1.9, Password: true)
```
