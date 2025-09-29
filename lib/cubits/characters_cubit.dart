import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/character_model.dart';
import '../services/api_service.dart';

class CharactersCubit extends Cubit<CharactersState> {
  final ApiService apiService;

  CharactersCubit(this.apiService) : super(CharactersInitial());

  Future<void> fetchCharacters() async {
    emit(CharactersLoading());
    
    try {
      final characters = await apiService.getPopularPeople();
      emit(CharactersLoaded(characters));
    } catch (e) {
      emit(CharactersError(e.toString()));
    }
  }
}

abstract class CharactersState {}

class CharactersInitial extends CharactersState {}

class CharactersLoading extends CharactersState {}

class CharactersLoaded extends CharactersState {
  final List<Character> characters;
  CharactersLoaded(this.characters);
}

class CharactersError extends CharactersState {
  final String message;
  CharactersError(this.message);
}