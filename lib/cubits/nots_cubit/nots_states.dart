import 'package:notes_app/models/note_model.dart';

abstract class NotesStates{}

class NotesInitialStates extends NotesStates{}

class NotesLoadingStates extends NotesStates{}

class NotesSuccessStates extends NotesStates{
  final List<NoteModel> notes;

  NotesSuccessStates(this.notes);
}

class NotesErrorStates extends NotesStates{
  final String errMessage;

  NotesErrorStates(this.errMessage);
}