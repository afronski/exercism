const DNA = { 'A': 'A', 'C': 'C', 'G': 'G', 'T': 'T' } as const;
const RNA = { 'A': 'A', 'C': 'C', 'G': 'G', 'U': 'U' } as const;

type DNANucleotide = keyof typeof DNA;
type RNANucleotide = keyof typeof RNA;

type DNAStrand = string & { isDNAStrand: true };

const DNA2RNA: Record<DNANucleotide, RNANucleotide> = {
  G: 'C',
  C: 'G',
  T: 'A',
  A: 'U'
};

const notDNANucleotides =
  (letter: string): letter is DNANucleotide => !DNA.hasOwnProperty(letter)

const isDNAStrand =
  (strand: string): strand is DNAStrand => strand.split('').filter(notDNANucleotides).length === 0

export const toRna = (input: string): string => {
  if (!isDNAStrand(input)) {
    throw new Error("Invalid input DNA.");
  }

  return input
          .toLocaleUpperCase()
          .split('')
          .map((letter) => DNA2RNA[<DNANucleotide> letter])
          .join('');
};