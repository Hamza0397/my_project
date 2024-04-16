import 'dart:async';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;

  const LoginButton({
    Key? key,
    required this.onPressed,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  late Timer _timer;
  double _progress = 0.0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(milliseconds: 20), (timer) {
      setState(() {
        _progress += 0.005;
        if (_progress >= 1.0) {
          _progress = 0.0;
        }
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: RawMaterialButton(
        onPressed: widget.onPressed,
        fillColor: Colors.transparent,
        elevation: 0,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: CustomPaint(
          painter: _ButtonPainter(_progress),
        ),
      ),
    );
  }
}

class _ButtonPainter extends CustomPainter {
  final double progress;

  _ButtonPainter(this.progress);

  @override
  void paint(Canvas canvas, Size size) {
    final double startX = 0;
    final double startY = size.height / 2;
    final double endX = size.width * progress;
    final double endY = size.height / 2;

    final Paint borderPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    final Paint linePaint = Paint()
      ..color = Colors.black
      ..strokeWidth = 2.0;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), borderPaint);
    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), linePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
