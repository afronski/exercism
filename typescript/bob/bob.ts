const isUppercase = (letter: string): boolean => /[A-Z]/.test(letter);
const isLetter = (letter: string): boolean => /[a-z]/i.test(letter);

export function hey(message: string): string {
  const tokenizedMessage = message.trim().split('')

  const hasLetters = tokenizedMessage.some(isLetter);
  const allUppercase = tokenizedMessage.filter(isLetter).every(isUppercase);
  const questionLike = tokenizedMessage[tokenizedMessage.length - 1] === '?';

  if (tokenizedMessage.length === 0) {
    return 'Fine. Be that way!';
  }

  if (allUppercase && !questionLike && hasLetters) {
    return 'Whoa, chill out!';
  }

  if (allUppercase && questionLike && hasLetters) {
    return "Calm down, I know what I'm doing!";
  }

  if (questionLike) {
    return 'Sure.';
  }

  return 'Whatever.';
}
