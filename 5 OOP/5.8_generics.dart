class Word<T> {
  T name;

  Word(this.name);

  T getName() {
    print(name);
    return name;
  }
}

main(List<String> args) {
  Word<String> word = Word("zekaryas");
  word.getName();
}
