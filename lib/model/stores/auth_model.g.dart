// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AuthModel on AuthModelBase, Store {
  final _$isLoadingAtom = Atom(name: 'AuthModelBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.context.enforceReadPolicy(_$isLoadingAtom);
    _$isLoadingAtom.reportObserved();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.context.conditionallyRunInAction(() {
      super.isLoading = value;
      _$isLoadingAtom.reportChanged();
    }, _$isLoadingAtom, name: '${_$isLoadingAtom.name}_set');
  }

  final _$isLoggedInAtom = Atom(name: 'AuthModelBase.isLoggedIn');

  @override
  bool get isLoggedIn {
    _$isLoggedInAtom.context.enforceReadPolicy(_$isLoggedInAtom);
    _$isLoggedInAtom.reportObserved();
    return super.isLoggedIn;
  }

  @override
  set isLoggedIn(bool value) {
    _$isLoggedInAtom.context.conditionallyRunInAction(() {
      super.isLoggedIn = value;
      _$isLoggedInAtom.reportChanged();
    }, _$isLoggedInAtom, name: '${_$isLoggedInAtom.name}_set');
  }

  final _$userInfoAtom = Atom(name: 'AuthModelBase.userInfo');

  @override
  UserInfo get userInfo {
    _$userInfoAtom.context.enforceReadPolicy(_$userInfoAtom);
    _$userInfoAtom.reportObserved();
    return super.userInfo;
  }

  @override
  set userInfo(UserInfo value) {
    _$userInfoAtom.context.conditionallyRunInAction(() {
      super.userInfo = value;
      _$userInfoAtom.reportChanged();
    }, _$userInfoAtom, name: '${_$userInfoAtom.name}_set');
  }

  final _$logoutAsyncAction = AsyncAction('logout');

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$initAsyncAction = AsyncAction('init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$loginAsyncAction = AsyncAction('login');

  @override
  Future<void> login(String token, String provider) {
    return _$loginAsyncAction.run(() => super.login(token, provider));
  }

  final _$registerAsyncAction = AsyncAction('register');

  @override
  Future<void> register(String email, String provider) {
    return _$registerAsyncAction.run(() => super.register(email, provider));
  }

  final _$socialRegisterAsyncAction = AsyncAction('socialRegister');

  @override
  Future<void> socialRegister(String token, String provider) {
    return _$socialRegisterAsyncAction
        .run(() => super.socialRegister(token, provider));
  }
}
