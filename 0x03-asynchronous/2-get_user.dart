import '2-util.dart';

Future<void> getUser() async {
  try {
    var response = await fetchUser();
    print(response);
  } catch(error) {
    print("error caught: $error");
  }
}