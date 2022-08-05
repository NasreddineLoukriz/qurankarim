import 'package:flutter/material.dart';
import 'home.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() {
  runApp(const Main());
}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home:const Home(),
builder: EasyLoading.init(),
    );
    
  }
}