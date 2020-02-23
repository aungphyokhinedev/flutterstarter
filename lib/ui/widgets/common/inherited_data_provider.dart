
import 'package:barlarlar/model/stores/store.dart';
import 'package:flutter/cupertino.dart';

class InheritedDataProvider extends InheritedWidget {
final Store store;
InheritedDataProvider({
  Widget child,
  this.store,
}) : super(child: child);
@override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;
  static InheritedDataProvider of(BuildContext context) => context.dependOnInheritedWidgetOfExactType<InheritedDataProvider>();
}