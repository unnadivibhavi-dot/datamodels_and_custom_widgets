import 'package:flutter/material.dart';

import 'book.dart';
import 'book_card.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Book()));
}

class Book extends StatefulWidget {
  const Book({super.key});

  @override
  State<Book> createState() => _BookState();
}

class _BookState extends State<Book> {
  // TODO:
  // Create a List of BookDetails objects.
  //
  // Add at least four books.
  //
  // Example:
  //
  // BookDetails(
  //   title: "ABOVE THE SALT",
  //   author: "Katherine Vaz",
  // )

  List<BookDetails> books = [
    // TODO: Add book objects here
    BookDetails(title: "ABOVE THE SALT", author: "Katherine Vaz"),
    BookDetails(title: "Dune", author: "Frank Herbert"),
    BookDetails(title: "1984", author: "George Orwell"),
    BookDetails(title: "Project Hail Mary", author: "Andy Weir"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Book App"), centerTitle: true),

      body: SafeArea(
        child: Column(
          children: books
              .map(
                (book) => BookCard(
                  book: book, // Pass the current book object to the BookCard
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
