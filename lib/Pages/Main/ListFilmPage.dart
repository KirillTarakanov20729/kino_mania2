import 'package:flutter/material.dart';
import 'package:kino_mania2/Seeders/DataSeeder.dart';
import 'package:kino_mania2/Models/FilmModel.dart';
import 'FilmPage.dart';

class ListFilmPage extends StatelessWidget {
  final String genreId;

  ListFilmPage({required this.genreId});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = Seeder();
    List<Film> films = data['films'];

    List<Film> filteredFilms = films.where((film) => film.genreId == genreId).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Фильмы по жанру'),
      ),
      backgroundColor: Colors.black,
      body: ListView.builder(
        itemCount: filteredFilms.length,
        itemBuilder: (context, index) {
          Film film = filteredFilms[index];
          return ListTile(
            title: Text(
              film.title,
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Дата выхода: ${film.releaseDate}',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilmPage(filmId: film.id),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
