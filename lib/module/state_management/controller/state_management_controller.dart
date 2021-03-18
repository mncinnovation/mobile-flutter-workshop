import 'package:get/get.dart';
import 'package:thedartpackage/module/state_management/data/repo/state_management_repo.dart';

class StateManagementController extends GetxController
    with StateManagementRepo {
  var listData = [
    {
      'gambar': 'assets/img/foto_bts.png',
      'channel': 'Entertainment',
      'title': 'Siap-Siap, BTS Dikabarkan Akan Rilis Album BE versi Terbaru'
    },
    {
      'gambar': 'assets/img/foto_tiara.png',
      'channel': 'Music',
      'title':
          'Sentuhan ala Drakor Bakal Warnai Perjalanan Cinta Arsy Widianto dan Tiara Andini'
    },
    {
      'gambar': 'assets/img/foto_joe.png',
      'channel': 'Fashion & Beauty',
      'title': 'Penampilan Joe Taslim di Film Mortal Kombat'
    },
    {
      'gambar': 'assets/img/foto_drakor.png',
      'channel': 'Entertainment',
      'title':
          'Bong Joon Ho Ditunjuk Jadi Ketua Juri Festival Film Venesia 2021'
    },
  ];

  var page = 0;

  var isRead = true;

  setPage(value) {
    page = value;
    update();
  }

  setRead(value) {
    isRead = value;
    update();
  }
}
