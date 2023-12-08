import 'package:kino_mania2/Models/ActorModel.dart';
import 'package:kino_mania2/Models/FilmModel.dart';
import 'package:kino_mania2/Models/ProducerModel.dart';
import 'package:kino_mania2/Models/GenreModel.dart';

Map<String, dynamic> Seeder() {
  // Генерация тестовых данных актеров
  List<Actor> actors = [
    Actor(id: '1', name: 'Том Хэнкс'),
    Actor(id: '2', name: 'Леонардо Дикаприо'),
    Actor(id: '3', name: 'Павел Прилучный'),
  ];

  // Генерация тестовых данных продюсеров
  List<Producer> producers = [
    Producer(id: '1', name: 'Стивен Спилберг'),
    Producer(id: '2', name: 'Кристофер Нолан'),
    Producer(id: '3', name: 'Квентин Тарантино'),
  ];

  // Генерация тестовых данных жанров
  List<Genre> genres = [
    Genre(id: '1', name: 'Ужасы'),
    Genre(id: '2', name: 'Фантастика'),
    Genre(id: '3', name: 'Мелодрама'),
  ];

  List<Film> films = [
    Film(
      id: '1',
      genreId: '3',
      producerId: '1',
      actorIds: ['1', '2'],
      title: 'Форрест Гамп',
      releaseDate: DateTime(1994, 7, 6),
      coverImage: 'assets/images/forrest_gump.jpg',
      desc: 'Форрест Гамп - простой человек с низким IQ, но с большими амбициями. Он побывал во Вьетнаме, снялся в фильме, стал миллионером и многое другое.',
    ),
    Film(
      id: '2',
      genreId: '2',
      producerId: '2',
      actorIds: ['2', '3'],
      title: 'Интерстеллар',
      releaseDate: DateTime(2010, 7, 16),
      coverImage: 'assets/images/interstellar.jpg',
      desc: 'Группа исследователей отправляется в космос, чтобы найти новый дом для человечества, так как Земля находится на грани вымирания.',
    ),
    Film(
      id: '3',
      genreId: '1',
      producerId: '3',
      actorIds: ['1', '3'],
      title: 'Крик',
      releaseDate: DateTime(2010, 7, 16),
      coverImage: 'assets/images/scream.jpg',
      desc: 'Маленький городок становится ареной для серийного убийцы, который преследует группу подростков.',
    ),
    Film(
      id: '4',
      genreId: '1',
      producerId: '2',
      actorIds: ['1', '3'],
      title: 'Крик 2',
      releaseDate: DateTime(2012, 7, 16),
      coverImage: 'assets/images/scream.jpg',
      desc: 'Продолжение истории о серийном убийце, который вновь возвращается в город, чтобы терроризировать его жителей.',
    ),
  ];

  Map<String, dynamic> data = {
    'actors': actors,
    'producers': producers,
    'genres': genres,
    'films': films,
  };

  return data;
}
