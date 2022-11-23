import 'package:flutter/material.dart';

class InitialLoadingView extends StatelessWidget {
  const InitialLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      constraints: BoxConstraints.tight(size),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: CircularProgressIndicator(
              color: Colors.black.withOpacity(0.25),
              strokeWidth: 3,
            ),
          ),
          const SizedBox(height: 40),
          Text(
            "Loading...",
            softWrap: true,
            style: TextStyle(
              color: Colors.black.withOpacity(0.25),
              fontSize: 18,
              fontWeight: FontWeight.bold,
              letterSpacing: 4,
            ),
          ),
        ],
      ),
    );
  }
}
