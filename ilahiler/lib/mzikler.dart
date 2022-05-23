// ignore_for_file: no_duplicate_case_values

import 'dart:core';
import 'package:assets_audio_player/assets_audio_player.dart';


AssetsAudioPlayer Oynatici = AssetsAudioPlayer();

class ilahiSinifi {
  //----------------------------------------------------------------------------
  static aglamaKaranfl() {
    Oynatici.open(Audio('/images/aglamakaranfil.mp3'), showNotification: true,loopMode: LoopMode.single);
  }

  //----------------------------------------------------------------------------
  static benMinikBirKulum() {
    Oynatici.open(Audio('/images/benminikbirkulum.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static BuAkilile() {
    Oynatici.open(Audio('/images/buaklifikriylemevlabulunmaz.mp3',),
        showNotification: true,loopMode: LoopMode.playlist);
  }

  //----------------------------------------------------------------------------
  static CanimKurbanOlsunSana() {
    Oynatici.open(Audio('/images/canimkurbanolsun.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static CennetEvi() {
    Oynatici.open(Audio('/images/cennetevi.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static DilhanesiPulHurOlanin() {
    Oynatici.open(Audio('/images/dilhanesipurnurolur.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static EryarinHakDivanindaBelliolur() {
    Oynatici.open(Audio('/images/eryarinhakdivanindabellolur.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static GelGorBeniAskNeyledi() {
    Oynatici.open(Audio('/images/gelgorbeniaskneyledi.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static GonulKusu() {
    Oynatici.open(Audio('/images/gonulkusu.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static islandiSeccadem() {
    Oynatici.open(Audio('/images/islandiseccadem.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static KaraBulutlardaBirSimsekCakti() {
    Oynatici.open(Audio('/images/karabulutlardabirsimsekcakti.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static KaraYuzumSureGelsem() {
    Oynatici.open(Audio('/images/karayuzumsuregelsem.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static MevlamSamaErsemDiye() {
    Oynatici.open(Audio('/images/mevlamsanaersemdiye.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static SalavatiSerife() {
    Oynatici.open(Audio('/images/salavatiserife.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static SeherVaktiBulbuller() {
    Oynatici.open(Audio('/images/sehervaktibulbuller.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static TaleBedruAleyna() {
    Oynatici.open(Audio('/images/talealbedrualeyna.mp3'),
        showNotification: true);
  }

  //----------------------------------------------------------------------------
  static Tesbihat() {
    Oynatici.open(Audio('/images/tesbihat.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static YakmaYarabbi() {
    Oynatici.open(Audio('/images/yakmayarabbi.mp3'), showNotification: true);
  }

  //----------------------------------------------------------------------------
  static YanYuregim() {
    Oynatici.open(Audio('/images/yanyuregimyan.mp3'), showNotification: true);
  }
  //----------------------------------------------------------------------------

  static oynaticiListe(int OynatmaSirasi) {
    switch (OynatmaSirasi) {
      case 0:
        aglamaKaranfl();
        break;
      case 1:
        benMinikBirKulum();
        break;
      case 2:
        BuAkilile();
        break;
      case 3:
        CanimKurbanOlsunSana();
        break;
      case 4:
        CennetEvi();
        break;
      case 5:
        DilhanesiPulHurOlanin();
        break;
      case 6:
        EryarinHakDivanindaBelliolur();
        break;
      case 7:
        GelGorBeniAskNeyledi();
        break;
      case 8:
        GonulKusu();
        break;
      case 9:
        islandiSeccadem();
        break;
      case 10:
        KaraBulutlardaBirSimsekCakti();
        break;
      case 11:
        KaraYuzumSureGelsem();
        break;
      case 12:
        MevlamSamaErsemDiye();
        break;
      case 13:
        SalavatiSerife();
        break;
      case 14:
        SeherVaktiBulbuller();
        break;
      case 15:
        TaleBedruAleyna();
        break;
      case 16:
        Tesbihat();
        break;
      case 17:
        YakmaYarabbi();
        break;
      case 18:
        YanYuregim();
        break;
    }
  }
}
