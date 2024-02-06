extension CommonExtension<T> on T {
  U let<U>(U Function(T it) action) {
    return action(this);
  }

  Future<U> letAsync<U>(Future<U> Function(T it) action) async {
    final result = await action(this);
    return result;
  }

  T? takeIf(bool Function(T it) predicate) {
    if (predicate(this)) {
      return this;
    } else {
      return null;
    }
  }
}
