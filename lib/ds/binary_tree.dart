import 'package:dsa/ds/stack.dart';

import 'stack_impl.dart';

/// Represents a node in a binary tree.
class Node<T> {
  T data;
  Node<T>? left;
  Node<T>? right;

  /// Creates a new instance of the [Node] class.
  ///
  /// The [data] parameter represents the data stored in the node.
  /// The [left] parameter represents the left child of the node.
  /// The [right] parameter represents the right child of the node.
  Node({required this.data, this.left, this.right});
}

class BinaryTree {
  Node<String>? a;
  BinaryTree() {
    init();
  }

  final Stack<Node<String>> _stack = StackImpl<Node<String>>();

  /// Creates a new node with the specified data.
  ///
  /// This method is used to create a new node in a binary tree with the given data.
  /// The data parameter represents the value to be stored in the node.
  /// Returns the newly created node.
  ///
  /// This function is responsible for creating a new node in the binary tree
  /// with the provided data. It returns the newly created node.
  ///
  /// The [data] parameter represents the value to be stored in the node.
  /// Returns a new instance of the [Node] class.
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

  /// Performs a depth-first traversal of the binary tree starting from the given [node].
  /// Prints the data of each node in the traversal order.
  ///
  /// The depth-first traversal visits each node in the tree by exploring as far as possible
  /// along each branch before backtracking. It uses a stack to keep track of the nodes to visit.
  ///
  /// Example usage:
  /// ```dart
  /// BinaryTree<String> tree = BinaryTree<String>();
  /// // ... initialize the tree ...
  /// tree.defthFirstTraversal(tree.root);
  /// ```
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

/// Performs a depth-first traversal of the binary tree starting from the given [node].
/// Returns a list of values in the order of traversal.
/// If the [node] is null, an empty list is returned.
/// The traversal is performed recursively.
List<T> _defthFirstTraversalRecursive<T>(Node<T>? node) {
  if (node == null) return [];

  final leftValues = _defthFirstTraversalRecursive(node.left);
  print("left $leftValues");
  final rightValues = _defthFirstTraversalRecursive(node.right);
  print("right $rightValues}");
  return [node.data, ...leftValues, ...rightValues];
}

/// Performs a breadth-first traversal of the binary tree starting from the given [node].
/// Returns a list of elements in the order they are visited.
///
/// The breadth-first traversal visits each level of the tree from left to right before moving to the next level.
/// It uses a queue data structure to keep track of the nodes to visit.
///
/// Example usage:
/// ```dart
/// BinaryTree<int> tree = BinaryTree<int>();
/// // ... populate the tree ...
/// List<int> traversal = tree.breadthFirstTraversal(tree.root);
/// print(traversal); // [1, 2, 3, 4, 5, 6, 7]
/// ```
List<T> breadthFirstTraversal<T>(Node<T>? node) {
  final List<Node<T>?> queue = [node];
  final List<T> result = [];
  while (queue.isNotEmpty) {
    final currentNode = queue.removeAt(0);

    print(currentNode?.data);
    result.add(currentNode!.data!);
    if (currentNode.left != null) {
      queue.add(currentNode.left);
    }
    if (currentNode.right != null) {
      queue.add(currentNode.right);
    }
  }

  return result;
}
