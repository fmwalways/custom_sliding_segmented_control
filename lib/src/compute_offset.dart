double computeOffset<T>({
  required List<double> sizes,
  required List<T?> items,
  T? current,
}) {
  if (sizes.isNotEmpty && sizes.length == items.length) {
    return sizes
        .getRange(0, items.indexOf(current) != -1 ? items.indexOf(current) : 0)
        .fold<double>(0, (previousValue, element) => previousValue + element);
  } else {
    return 0;
  }
}
