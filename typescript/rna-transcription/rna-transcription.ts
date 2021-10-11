enum Nucleotide {
  G = 'G',
  C = 'C',
  T = 'T',
  A = 'A',
  U = 'U'
};

class DNANucleotide {
  private value: Nucleotide;

  private validate(dna: string): boolean {
    return dna.length === 1 && dna in Nucleotide && dna !== Nucleotide.U;
  }

  private constructor(dna: string) {
    if (!this.validate(dna)) {
      throw new Error('Invalid input DNA.');
    }

    this.value = <Nucleotide> dna;
  }

  toString() {
    return this.value;
  }

  toRNA(): Nucleotide {
    return DNANucleotide.TO_RNA[this.value];
  }

  static build(fragment: string): DNANucleotide {
    return new DNANucleotide(fragment);
  }

  static G = new DNANucleotide(Nucleotide.G);
  static C = new DNANucleotide(Nucleotide.C);
  static T = new DNANucleotide(Nucleotide.T);
  static A = new DNANucleotide(Nucleotide.A);

  private static TO_RNA = {
    [Nucleotide.G]: Nucleotide.C,
    [Nucleotide.C]: Nucleotide.G,
    [Nucleotide.T]: Nucleotide.A,
    [Nucleotide.A]: Nucleotide.U,
    [Nucleotide.U]: Nucleotide.U
  }
}

export function toRna(dna: string): string {
  return dna
          .toLocaleUpperCase()
          .split('')
          .map((fragment) => DNANucleotide.build(fragment).toRNA())
          .join('');
}
