
# A function that returns the number of hamming
# in a two dna sequence strings parameters supplied to it

def hamming_dna(dna_1, dna_2)
    hamming = 0;
    dna_1.split("").each_with_index do |v, i|
        dna_2.split("")[i] != v ? hamming += 1 : hamming = hamming
    end
    hamming
end

# sample string
sample1 = "ABCDRCCWRWT"
sample2 = "ABCDRCCWRWT"

# to display the number of hammings
print hamming_dna(sample1, sample2)