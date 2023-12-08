import 'package:flutter/material.dart';
import 'package:kino_mania2/Seeders/DataSeeder.dart';
import 'package:kino_mania2/Models/FilmModel.dart';

class FilmPage extends StatelessWidget {
  final String filmId;

  FilmPage({required this.filmId});

  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> data = Seeder();
    List<Film> films = data['films'];

    Film? selectedFilm = films.firstWhere((film) => film.id == filmId);

    if (selectedFilm == null) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Фильм не найден'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedFilm.title),
      ),
      backgroundColor: Colors.black,
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            
              SizedBox(height: 8.0),
              Text(
                'Название: ${selectedFilm.title}',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Text(
                'Дата выхода: ${selectedFilm.releaseDate}',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(height: 8.0),
              Text(
                '${selectedFilm.desc}',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
