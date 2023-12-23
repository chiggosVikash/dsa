abstract interface class Stack<E> {
  void push(E element);

  E pop();

  E peek();

  bool isEmpty();

  int size();
}
