/// Represents a participant in a group.
class Teilnehmer {
  /// First name.
  final String vorname;

  /// Last name.
  final String nachname;

  /// Final grade.
  final int? abschlussnote;

  /// States whether the participant passed, or not.
  final bool hatBestanden;

  /// Represents a participant in a group.
  /// [vorname]: First name.
  /// [nachname]: Last name.
  /// [abschlussnote]: Final grade.
  /// [hatBestanden]: States whether the participant passed, or not.
  Teilnehmer({
    required this.vorname,
    required this.nachname,
    this.abschlussnote,
    this.hatBestanden = false,
  });

  /// Copies a Teilnehmer-object with new or the same values.
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
