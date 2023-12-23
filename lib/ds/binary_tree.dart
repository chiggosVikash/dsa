import 'package:dsa/ds/stack.dart';

import 'stack_impl.dart';

class Node<T> {
  T data;
  Node<T>? left;
  Node<T>? right;

  Node({required this.data, this.left, this.right});
}

class BinaryTree {
  Node<String>? a;
  BinaryTree() {
    init();
  }

  final Stack<Node<String>> _stack = StackImpl<Node<String>>();

  void init() {
    a = Node<String>(data: "A");
    final b = Node<String>(data: "B");
    final c = Node<String>(data: "C");
    final d = Node<String>(data: "D");
    final e = Node<String>(data: "E");
    final f = Node<String>(data: "F");

    a?.left = b;
    a?.right = c;
    b.left = d;
    b.right = e;
    c.right = f;

    defthFirstTraversal(a!);
  }

  void defthFirstTraversal(Node<String> node) {
    _stack.push(node);
    while (_stack.isEmpty() == false) {
      final currentNode = _stack.pop();
      print(currentNode.data);
      if (currentNode.right != null) {
        _stack.push(currentNode.right!);
      }
      if (currentNode.left != null) {
        _stack.push(currentNode.left!);
      }
    }
  }
}
