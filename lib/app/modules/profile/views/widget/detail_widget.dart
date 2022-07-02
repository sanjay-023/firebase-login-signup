import 'package:flutter/material.dart';

class DetailWidget extends StatelessWidget {
  DetailWidget({Key? key, required this.textIcon, required this.detailtext})
      : super(key: key);
  final IconData textIcon;
  final String detailtext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Color.fromARGB(30, 0, 0, 0),
                  blurRadius: 6,
                  spreadRadius: 0.5)
            ]),
        child: ListTile(
            leading: Icon(textIcon, color: Color.fromARGB(255, 2, 71, 127)),
            title: Text(detailtext),
            trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
      ),
    );
  }
}
