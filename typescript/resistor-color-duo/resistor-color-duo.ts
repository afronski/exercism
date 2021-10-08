const COLORS : { [color: string]: string } = {
  'black': '0',
  'brown': '1',
  'red': '2',
  'orange': '3',
  'yellow': '4',
  'green': '5',
  'blue': '6',
  'violet': '7',
  'grey': '8',
  'white': '9'
};

export function decodedValue(colorCoding : string[]) : number {
  const stringifiedValue : string =
    colorCoding
      .slice(0, 2)
      .map((color : string) => COLORS[color.toLocaleLowerCase()])
      .reduce((value, sum) => value + sum, '');

  return parseInt(stringifiedValue, 10);
}
