part of 'authentication_cubit.dart';

@immutable
abstract class AuthenticationState  extends Equatable{
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {

  @override
  List<Object> get props =>[];
}
class AuthenticationLoading extends AuthenticationState {

  @override
  List<Object> get props =>[];
}
class AuthenticationSuccess extends AuthenticationState {

  @override
  List<Object> get props =>[];
}
class AuthenticationFailure extends AuthenticationState {

  @override
  List<Object> get props =>[];
}