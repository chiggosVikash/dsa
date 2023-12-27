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

  List<T> _defthFirstTraversalRecursive<T>(Node<T>? node) {
    if (node == null) return [];

    final leftValues = _defthFirstTraversalRecursive(node.left);
    print("left $leftValues");
    final rightValues = _defthFirstTraversalRecursive(node.right);
    print("right $rightValues}");
    return [node.data, ...leftValues, ...rightValues];
  }

  List<T> breadthFirstTraversal<T>(Node<T>? node) {
    final List<Node<T>?> queue = [node];

    while (queue.isNotEmpty) {
      final currentNode = queue.removeAt(0);

      print(currentNode?.data);
      if (currentNode?.left != null) {
        queue.add(currentNode?.left);
      }
      if (currentNode?.right != null) {
        queue.add(currentNode?.right);
      }
    }

    return [];
  }
}
