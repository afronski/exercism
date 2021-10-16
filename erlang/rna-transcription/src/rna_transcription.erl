-module(rna_transcription).

-export([to_rna/1]).


dna2rna($G) -> $C;
dna2rna($C) -> $G;
dna2rna($T) -> $A;
dna2rna($A) -> $U.

to_rna(Strand) -> lists:map(fun dna2rna/1, string:uppercase(Strand)).
