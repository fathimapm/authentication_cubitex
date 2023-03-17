import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:new_cubit/src/constants/storage_keys.dart';
import 'package:new_cubit/src/cubit/authntication/authentication_repository.dart';
import 'package:new_cubit/src/helpers/storage_helper.dart';
import 'package:new_cubit/src/models/User_data.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
   final AuthenticationRepository _repository = AuthenticationRepository();
  AuthenticationCubit() : super(AuthenticationInitial());

  login(String username,String password) async{
    emit(AuthenticationLoading());
    try {
      List<UserData> userList = await _repository.readUserDataFile();
      UserData loggedUserData =
      userList.firstWhere((element) =>
      element.email == username && element.password == password);
      await Future.delayed(Duration(seconds: 4));
      if (loggedUserData != null) {
        StorageHelper.writeData(StorageKey.userData.name, jsonEncode(loggedUserData.toJson()));
        emit(AuthenticationSuccess());
      } else {
        emit(AuthenticationFailure());
      }
    }catch(ex){
      emit(AuthenticationFailure());
    }
  }

}
