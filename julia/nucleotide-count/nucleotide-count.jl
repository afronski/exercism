"""
    count_nucleotides(strand)

The count of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand::AbstractString)
    nucleotides = "ACGT"

    counts = Dict{Char, Integer}((n, 0) for n in nucleotides)

    for c in strand
        c ∈ nucleotides || throw(DomainError("$(c) is not a valid nucleotide."))
        counts[c] += 1
    end

    counts
end
