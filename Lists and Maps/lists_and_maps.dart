import 'dart:math';

Map<int, List<String>> getCounts(Map<String, List<String>> m) {
  Map<int, List<String>> update_map = {};
  m.forEach((key, value) {
    if (!update_map.containsKey(value.length)) {
      update_map[value.length] = [key];
    } else {
      update_map[value.length]!.add(key);
    }
    ;
    update_map[value.length]!.sort();
  });
  return update_map;
}

void addShortest(String item, Map<String, List<String>> m) {
  Map<int, List<String>> counts = getCounts(m);
  int shortestLength = counts.keys.reduce(min);
  List<String>? shortest_value = counts[shortestLength];
  m[shortest_value![0]]!.add(item);
}

void main() {
  Map<String, List<String>> data = {
    "One": ["a", "x"],
    "Two": ["b", "c", "z"],
    "Three": ["f", "g", "h"]
  };
  print(getCounts(data));
  addShortest('g', data);
  print(data);
}
