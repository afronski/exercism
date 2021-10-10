export function isLeap(year: number) : boolean {
  const divisibleBy100 = year % 100 === 0;
  const divisibleBy400 = year % 400 === 0;

  if (divisibleBy100 && !divisibleBy400) {
    return false;
  }

  if (divisibleBy400) {
    return true;
  }

  return year % 4 === 0;
}
