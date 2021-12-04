"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
  start = Dict('A' => 0, 'C' => 0, 'G' => 0, 'T' => 0)

  function incrementNucleotide(dictionary, nucleotide)
    if !(nucleotide in ['A', 'C', 'G', 'T'])
      throw(DomainError(strand, "Unexpected Nucleotide Provided in the Strand"))
    end

    dictionary[nucleotide] += 1
    return dictionary
  end

  reduce(incrementNucleotide, collect(strand), init = start)
end
