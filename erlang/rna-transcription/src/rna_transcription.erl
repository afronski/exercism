-module(rna_transcription).

-export([to_rna/1]).

-spec dna2rna(char()) -> char().
dna2rna($G) -> $C;
dna2rna($C) -> $G;
dna2rna($T) -> $A;
dna2rna($A) -> $U.

-spec to_rna(string()) -> string().
to_rna(Strand) -> lists:map(fun dna2rna/1, string:uppercase(Strand)).
