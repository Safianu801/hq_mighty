import 'package:flutter/material.dart';
import 'dart:math';

class RangeCircleProgressIndicator extends StatelessWidget {
  final double percent;
  final double range;
  final Color oColor;
  final Color iColor;

  RangeCircleProgressIndicator({
    required this.percent,
    required this.range, required this.oColor, required this.iColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 120,
        height: 120,
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Outer range indicator
            CustomPaint(
              painter: _RoundedCircularProgressPainter(range, oColor),
            ),
            // Inner custom progress indicator with rounded edges
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: CustomPaint(
                painter: _RoundedCircularProgressPainter(percent, iColor),
              ),
            ),
            // Percentage text in the center
            Center(
              child: Text(
                '${(percent * 100).toInt()}%',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RoundedCircularProgressPainter extends CustomPainter {
  final double percent;
  final Color color;
  _RoundedCircularProgressPainter(this.percent, this.color);

  @override
  void paint(Canvas canvas, Size size) {
    Paint backgroundPaint = Paint()
      ..color = Colors.grey[200]!
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    Paint foregroundPaint = Paint()
      ..color = color
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    canvas.drawCircle(center, radius, backgroundPaint);

    double sweepAngle = 2 * pi * percent;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      foregroundPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}