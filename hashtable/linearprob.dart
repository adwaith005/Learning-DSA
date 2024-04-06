class HashTable {
  late List<dynamic> _keys;
  late List<dynamic> _values;
  late int _size;

  HashTable(int size) {
    _keys = List<dynamic>.filled(size, null);
    _values = List<dynamic>.filled(size, null);
    _size = size;
  }

  int _hash(dynamic key) {
    return key.hashCode % _size;
  }

  void insert(dynamic key, dynamic value) {
    int index = _hash(key);

    while (_keys[index] != null) {
      // Linear probing: move to the next slot
      index = (index + 1) % _size;
    }

    _keys[index] = key;
    _values[index] = value;
  }

  dynamic search(dynamic key) {
    int index = _hash(key);

    while (_keys[index] != key) {
      if (_keys[index] == null) return null; // Key not found
      // Linear probing: move to the next slot
      index = (index + 1) % _size;
    }

    return _values[index];
  }
}

void main() {
  HashTable table = HashTable(10);
  table.insert(5, "apple");
  table.insert(15, "banana");
  table.insert(25, "orange");

  print(table.search(5)); // Output: apple
  print(table.search(15)); // Output: banana
  print(table.search(25)); // Output: orange
  print(table.search(35)); // Output: null (not found)
}
