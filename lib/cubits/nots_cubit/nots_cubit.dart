import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/nots_cubit/nots_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:hive/hive.dart';

class NotesCubit extends Cubit<NotesStates>{
  NotesCubit():super(NotesInitialStates());
  static NotesCubit get(context)=>BlocProvider.of(context);

  fetchAllNotes()async{
    emit(NotesLoadingStates());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = noteBox.values.toList();
      emit(NotesSuccessStates(notes));
    } catch (e) {
      emit(NotesErrorStates(e.toString()));
    }
  }
}