import 'package:flutter/material.dart';

class Acuueil extends StatefulWidget {
  const Acuueil({super.key});

  @override
  State<Acuueil> createState() => _AcuueilState();
}

class _AcuueilState extends State<Acuueil> with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 100).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Container(
          height: _animation.value,
          width: _animation.value,
          color: Colors.orange,
        );
      },
    );
  }
}