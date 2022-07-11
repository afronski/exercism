export const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white'
] as const;

type Colors = typeof COLORS[number];

export function colorCode(color : Colors) : number {
  return COLORS.indexOf(color);
}
