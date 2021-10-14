type Letters = Record<string, number>;

const ALPHABET = 'abcdefghijklmnopqrstuvwxyz'.split('');

const countLetters = (storage: Letters, letter: string) => {
  if (letter in storage) {
    storage[letter] += 1;
  } else {
    storage[letter] = 1;
  }

  return storage;
};

export function isPangram(sentence: string): boolean {
  const countedLetters = sentence
                          .toLocaleLowerCase()
                          .split('')
                          .reduce(countLetters, {});

  return ALPHABET.every((letter) => countedLetters[letter] >= 1);
}
