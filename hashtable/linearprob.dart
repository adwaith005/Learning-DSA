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
  table.insert(10, "banana");
  table.insert(25, "orange");
  table.insert(30, "avacado");

  for (int i = 0; i < table._size; i++) {
    if (table._keys[i] != null) {
      print("Key: ${table._keys[i]}, Value: ${table._values[i]}");
    }
  }
}
