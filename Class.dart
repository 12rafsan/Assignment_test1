class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;


  Book(this.title, this.author, this.publicationYear, this.pagesRead) {
    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() {
    return pagesRead;
  }

  String getTitle() {
    return title;
  }

  String getAuthor() {
    return author;
  }

  int getPublicationYear() {
    return publicationYear;
  }

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {
  Book book1 = Book('1984', 'Data Structure and Algorithms', 1949, 100);
  Book book2 = Book('Java Programming', 'James Gosling', 1995, 50);
  Book book3 = Book('Python Programming', ' Guido van Rossum', 1991, 20);

  book1.read(20);
  book2.read(30);
  book3.read(50);

  print('${book1.getTitle()} by ${book1.getAuthor()} (${book1.getPublicationYear()})');
  print('Pages read: ${book1.getPagesRead()}');
  print('Age: ${book1.getBookAge()} years\n');

  print('${book2.getTitle()} by ${book2.getAuthor()} (${book2.getPublicationYear()})');
  print('Pages read: ${book2.getPagesRead()}');
  print('Age: ${book2.getBookAge()} years\n');

  print('${book3.getTitle()} by ${book3.getAuthor()} (${book3.getPublicationYear()})');
  print('Pages read: ${book3.getPagesRead()}');
  print('Age: ${book3.getBookAge()} years\n');

  print('Total number of books created: ${Book.totalBooks}');
}
