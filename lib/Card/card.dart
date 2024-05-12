import 'package:flutter/material.dart';

class CardBlock extends StatefulWidget {
  const CardBlock(
      {super.key,
      required this.title,
      required this.description,
      required this.created});

  final String title;
  final String description;
  final String created;

  @override
  State<CardBlock> createState() => _CardBlockState();
}

class _CardBlockState extends State<CardBlock> {
  bool _change = false;

  void changeState() {
    setState(() {
      _change = !_change;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.only(top: 10),
      color: Colors.teal[100],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              widget.title,
              style: const TextStyle(fontSize: 30),
            )
          ]),
          Text(
            widget.description,
            style: const TextStyle(fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text(widget.created)],
          ),
          IconButton(
              onPressed: changeState,
              icon: _change
                  ? const Icon(
                      Icons.save,
                      size: 30,
                    )
                  : const Icon(
                      Icons.change_circle,
                      size: 30,
                    ))
        ],
      ),
    );
  }
}
