import 'package:flutter/material.dart';
import 'package:kinkun_app/views/home_ui.dart';

class SpScUI extends StatefulWidget {
  const SpScUI({Key? key}) : super(key: key);

  @override
  State<SpScUI> createState() => _SpScUIState();
}

class _SpScUIState extends State<SpScUI> {
  @override
  void initState() {
    Future.delayed(
      Duration(
        seconds: 3,
      ),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUI(),
        ),
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage(
                'assets/images/fastfood.png',
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Text(
              'กินกัน',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.green[800],
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 8.0,
            ),
          ],
        ),
      ),
    );
  }
}
