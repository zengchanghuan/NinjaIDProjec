import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';
void main() {
  runApp(const MaterialApp(
    home:QuoteList()
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author:'wan hong',text:'by youself'),
    Quote(author:'tristan wilde',text:'by youself'),
    Quote(author:'bruce li',text:'by youself')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote:quote,
            delete:(){
              setState(() {
                quotes.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}

