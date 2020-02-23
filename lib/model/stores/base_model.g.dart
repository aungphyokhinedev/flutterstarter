// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$BaseModel on BaseModelBase, Store {
  final _$lngAtom = Atom(name: 'BaseModelBase.lng');

  @override
  Map<String, String> get lng {
    _$lngAtom.context.enforceReadPolicy(_$lngAtom);
    _$lngAtom.reportObserved();
    return super.lng;
  }

  @override
  set lng(Map<String, String> value) {
    _$lngAtom.context.conditionallyRunInAction(() {
      super.lng = value;
      _$lngAtom.reportChanged();
    }, _$lngAtom, name: '${_$lngAtom.name}_set');
  }

  final _$currentLngAtom = Atom(name: 'BaseModelBase.currentLng');

  @override
  String get currentLng {
    _$currentLngAtom.context.enforceReadPolicy(_$currentLngAtom);
    _$currentLngAtom.reportObserved();
    return super.currentLng;
  }

  @override
  set currentLng(String value) {
    _$currentLngAtom.context.conditionallyRunInAction(() {
      super.currentLng = value;
      _$currentLngAtom.reportChanged();
    }, _$currentLngAtom, name: '${_$currentLngAtom.name}_set');
  }

  final _$currentThemeAtom = Atom(name: 'BaseModelBase.currentTheme');

  @override
  String get currentTheme {
    _$currentThemeAtom.context.enforceReadPolicy(_$currentThemeAtom);
    _$currentThemeAtom.reportObserved();
    return super.currentTheme;
  }

  @override
  set currentTheme(String value) {
    _$currentThemeAtom.context.conditionallyRunInAction(() {
      super.currentTheme = value;
      _$currentThemeAtom.reportChanged();
    }, _$currentThemeAtom, name: '${_$currentThemeAtom.name}_set');
  }

  final _$isLoadedAtom = Atom(name: 'BaseModelBase.isLoaded');

  @override
  bool get isLoaded {
    _$isLoadedAtom.context.enforceReadPolicy(_$isLoadedAtom);
    _$isLoadedAtom.reportObserved();
    return super.isLoaded;
  }

  @override
  set isLoaded(bool value) {
    _$isLoadedAtom.context.conditionallyRunInAction(() {
      super.isLoaded = value;
      _$isLoadedAtom.reportChanged();
    }, _$isLoadedAtom, name: '${_$isLoadedAtom.name}_set');
  }

  final _$initAsyncAction = AsyncAction('init');

  @override
  Future<void> init() {
    return _$initAsyncAction.run(() => super.init());
  }

  final _$initThemeAsyncAction = AsyncAction('initTheme');

  @override
  Future<void> initTheme() {
    return _$initThemeAsyncAction.run(() => super.initTheme());
  }

  final _$setThemeAsyncAction = AsyncAction('setTheme');

  @override
  Future<void> setTheme(String value) {
    return _$setThemeAsyncAction.run(() => super.setTheme(value));
  }

  final _$initLoadingAsyncAction = AsyncAction('initLoading');

  @override
  Future<void> initLoading() {
    return _$initLoadingAsyncAction.run(() => super.initLoading());
  }

  final _$setLoadingAsyncAction = AsyncAction('setLoading');

  @override
  Future<void> setLoading(bool value) {
    return _$setLoadingAsyncAction.run(() => super.setLoading(value));
  }

  final _$initLanguageAsyncAction = AsyncAction('initLanguage');

  @override
  Future<void> initLanguage() {
    return _$initLanguageAsyncAction.run(() => super.initLanguage());
  }

  final _$setLanguageAsyncAction = AsyncAction('setLanguage');

  @override
  Future<void> setLanguage(String value) {
    return _$setLanguageAsyncAction.run(() => super.setLanguage(value));
  }
}
