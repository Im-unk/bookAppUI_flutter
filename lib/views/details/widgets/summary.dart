import 'package:book_shelf/models/books.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Summary extends StatefulWidget {
  const Summary({key}) : super(key: key);

  @override
  _SummaryState createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  final TextEditingController _controller = TextEditingController();
  Book book;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final String text = _controller.text;
      _controller.value = _controller.value.copyWith(
        text: text,
        composing: TextRange.empty,
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          child: TextField(
            controller: _controller,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                hintText: "enter the summary that you have leaned here!"),
          ),
        ),
      ],
    );
  }
}
