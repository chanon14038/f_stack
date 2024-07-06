import 'package:flutter/material.dart';

// var imagepart =
//     'https://www.nzherald.co.nz/resizer/v2/TQMI5HKAUGRV54H7QCD3H4B7GI.jpg?auth=0572b099f25a1d57072099c1b57033647be4552e8046c7be93d21a3f423559f8&width=576&height=613&quality=70&smart=true';

class StackPage extends StatelessWidget {
  const StackPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: const Text('my dog'),
        // ),
        body: Stack(
      children: [
        Positioned.fill(
            child: Image.asset(
          'assets/images/dog.jpg',
          fit: BoxFit.fill,
        )),
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.black,
                Colors.black12,
                Colors.black12,
                Colors.black26,
                Colors.black38,
                Colors.black45,
              ], begin: Alignment.bottomCenter, end: Alignment.center),
            ),
          ),
        ),
        const Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Dog name's dum",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'dog like to eat noodles',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        )
      ],
    ));
  }
}
