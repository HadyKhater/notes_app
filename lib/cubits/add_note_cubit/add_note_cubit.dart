import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:notes_app/models/note_model.dart';
class AddNoteCubit extends Cubit<AddNoteStates>{
  AddNoteCubit():super(AddNoteInitial());
  static AddNoteCubit get(context)=>BlocProvider.of(context);

AddNote(NoteModel note){
  
}
}