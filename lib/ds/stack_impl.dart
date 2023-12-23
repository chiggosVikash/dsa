import 'package:dsa/ds/stack.dart';

class StackImpl<E> implements Stack<E> {
  final List<E> _list = [];
  @override
  bool isEmpty() {
    return _list.isEmpty;
  }

  @override
  peek() {
    if (_list.isEmpty) throw Exception("Stack is empty");

    final lastIndex = _list.length - 1;
    return _list[lastIndex];
  }

  @override
  pop() {
    if (_list.isEmpty) throw Exception("Stack is empty");

    final lastIndex = _list.length - 1;
    final lastElement = _list[lastIndex];
    _list.removeAt(lastIndex);
    return lastElement;
  }

  @override
  void push(element) {
    _list.add(element);
  }

  @override
  int size() {
    return _list.length;
  }
}
