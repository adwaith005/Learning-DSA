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

  int _quadraticProbe(int index, int attempt) {
    return (index + attempt * attempt) % _size;
  }

  void insert(dynamic key, dynamic value) {
    int index = _hash(key);
    int attempt = 0;

    while (_keys[index] != null) {
      // Quadratic probing: move to the next slot using quadratic function
      index = _quadraticProbe(index, attempt);
      attempt++;
    }

    _keys[index] = key;
    _values[index] = value;
  }

  dynamic search(dynamic key) {
    int index = _hash(key);
    int attempt = 0;

    while (_keys[index] != key) {
      if (_keys[index] == null) return null; // Key not found
      // Quadratic probing: move to the next slot using quadratic function
      index = _quadraticProbe(index, attempt);
      attempt++;
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
