class Teilnehmer {
  final String vorname;
  final String nachname;
  final int? abschlussnote;
  final bool hatBestanden;

  Teilnehmer({
    required this.vorname,
    required this.nachname,
    this.abschlussnote,
    this.hatBestanden = false,
  });

  Teilnehmer copyWith({
    String? vorname,
    String? nachname,
    int? Function()? abschlussnote,
    bool? hatBestanden,
  }) {
    return Teilnehmer(
      vorname:
          vorname ??
          this.vorname, // neuer Vorname falls vorhanden, sonst alten kopieren
      nachname:
          nachname ??
          this.nachname, // neuer Nachname falls vorhanden, sonst alten kopieren
      abschlussnote: abschlussnote != null
          ? abschlussnote()
          : this.abschlussnote, // neue Abschlussnote falls vorhanden, sonst alte kopieren
      hatBestanden:
          hatBestanden ??
          this.hatBestanden, // neuer Status falls vorhanden, sonst alten kopieren
    );
  }
}
