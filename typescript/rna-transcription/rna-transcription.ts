const DNANucleotide = [ 'A', 'C', 'G', 'T' ] as const;
const RNANucleotide = [ 'A', 'C', 'G', 'U' ] as const;

type DNA = typeof DNANucleotide[number];
type RNA = typeof RNANucleotide[number];

const DNA2RNA: Record<DNA, RNA> = {
  A: 'U',
  C: 'G',
  G: 'C',
  T: 'A',
};

const isDNANucleotide =
  (letter: string): boolean => DNANucleotide.some((nucleotide) => nucleotide === letter)

const isDNAStrand =
  (strand: string): boolean => strand.split('').every(isDNANucleotide)

const toRNAComplement =
  (letter: string) => DNA2RNA[<DNA> letter]

export const toRna = (input: string): string => {
  if (!isDNAStrand(input)) {
    throw new Error("Invalid input DNA.");
  }

  return input.toLocaleUpperCase().split('').map(toRNAComplement).join('');
};