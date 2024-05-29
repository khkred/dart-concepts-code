class Book {
  String title;
  String author;

  Book(this.title, this.author);
}

extension BookExtensions on Book {
  String description() {
    return "The book $title is written by $author";
  }
}

void main() {
  Book book = Book('Origin', 'Dan Brown');

  print(book.description());
}
