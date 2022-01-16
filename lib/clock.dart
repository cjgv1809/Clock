import 'package:flutter/material.dart';

class Clock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          circle(300.0),
          circle(150.0),
          hours(),
          minutes(),
          hoursTwelve(),
          hoursSix(),
          hoursThree(),
          hoursNine()
        ],
      ),
    );
  }

  Align hoursNine() {
    return Align(
        alignment: Alignment.centerLeft,
        child: Container(height: 3, width: 15, color: Colors.grey));
  }

  Align hoursThree() {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(height: 3, width: 15, color: Colors.grey));
  }

  Align hoursSix() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(height: 15, width: 3, color: Colors.grey));
  }

  Align hoursTwelve() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(height: 15, width: 3, color: Colors.grey));
  }

  Positioned minutes() {
    return Positioned(
      top: 35,
      child: Container(height: 130, width: 3, color: Colors.purple),
    );
  }

  Positioned hours() {
    return Positioned(
      right: 65,
      child: Container(width: 100, height: 3, color: Colors.green),
    );
  }

  Container circle(width) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(width / 2),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(5, 4),
                blurRadius: 10),
            BoxShadow(
                color: Colors.white.withOpacity(0.2),
                offset: Offset(-5, -4),
                blurRadius: 10)
          ]),
    );
  }
}
