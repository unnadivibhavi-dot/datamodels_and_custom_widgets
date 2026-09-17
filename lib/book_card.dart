import 'package:flutter/material.dart';

import 'book.dart';

// TODO:
// Create a custom widget called BookCard.
//
// Requirements:
//
// 1. BookCard must extend StatelessWidget.
// 2. It must receive a BookDetails object.
// 3. Store the BookDetails object in a final variable.
// 4. Create a constructor using a required named parameter.
// 5. Override the build() method.
// 6. Return a Card widget.
// 7. Display the book title.
// 8. Display the book author.
// 9. Use Padding.
// 10. Use a Column to arrange the title and author.

class BookCard extends StatelessWidget {
  // TODO: Create a final BookDetails variable
  final BookDetails book;

  // TODO: Create the constructor
  const BookCard({Key? key, required this.book}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO:
    // Return a Card containing:
    //
    // Padding
    //    ↓
    // Column
    //    ↓
    // Text(book.title)
    // Text(book.author)

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0), // Standard padding
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Left-aligns the text
          mainAxisSize: MainAxisSize
              .min, // Keeps the card tightly wrapped around the text
          children: [
            Text(
              book.title,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 8,
            ), // Adds a little space between title and author
            Text(
              book.author,
              style: const TextStyle(fontSize: 16, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
