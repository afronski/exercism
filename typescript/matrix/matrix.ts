export class Matrix {
  public readonly rows: number[][];
  public readonly columns: number[][];

  constructor(payload: string) {
    this.rows =
      payload
        .split('\n')
        .map(
          (line) => line.split(' ')
                               .map((numAsStr) => parseInt(numAsStr, 10))
        );

    this.columns = [];

    for (let i = 0; i < this.rows.length; ++i) {
      for (let j = 0; j < this.rows[i].length; ++j) {
        if (typeof(this.columns[j]) === 'undefined') {
          this.columns[j] = [];
        }

        this.columns[j][i] = this.rows[i][j];
      }
    }
  }
}
