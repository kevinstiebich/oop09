import 'teilnehmer.dart';

void main() {
  Teilnehmer teilnehmer = Teilnehmer(
    vorname: 'Kevin',
    nachname: 'Stiebich',
    abschlussnote: 1,
    hatBestanden: true,
  );

  teilnehmer = teilnehmer.copyWith(abschlussnote: () => null);

  print(teilnehmer.abschlussnote);
}
