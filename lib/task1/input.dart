import 'package:flutter/material.dart';

class input extends StatelessWidget {
  const input({super.key});

  @override
  Widget build(BuildContext context) {
    var emailtext = TextEditingController();
    var passtext = TextEditingController();
    return Center(
      child: Container(
        // color: Colors.orange,
        width: 200,
        // height: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailtext,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.green,
                ),
                hintText: 'Enter Email...',
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.orange, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: passtext,
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.orange, width: 2)),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.blue, width: 2)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.zero))),
              onPressed: () {
                String uemail = emailtext.text;
                String upass = passtext.text;

                print('Email: $uemail, Password: $upass');
              },
              child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
