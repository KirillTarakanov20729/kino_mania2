import 'package:flutter/material.dart';
import 'ListFilmPage.dart';

class GenrePage extends StatelessWidget {
  const GenrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Жанры'),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  navigateToGenreFilms(context, '1'); 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Text('Ужасы'),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  navigateToGenreFilms(context, '2'); 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Text('Фантастика'),
              ),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  navigateToGenreFilms(context, '3'); 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  padding: const EdgeInsets.all(16.0),
                ),
                child: const Text('Мелодрама'),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void navigateToGenreFilms(BuildContext context, String genreId) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ListFilmPage(genreId: genreId),
      ),
    );
  }

}
