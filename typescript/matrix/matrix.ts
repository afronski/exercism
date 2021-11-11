export class Matrix {
  public readonly rows: number[][];
  public readonly columns: number[][];

  constructor(payload: string) {
    this.rows = payload
      .split('\n')
      .map((line) => line.split(' ').map((numAsStr) => parseInt(numAsStr, 10)));

    this.columns = [];

    for (let i = 0; i < this.rows.length; ++i) {
      this.columns.push(this.rows.map(row => row[i]));
    }
  }
}
