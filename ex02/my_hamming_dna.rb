
# A function that takes a string and return it 
# rotated one word to the left
def hamming_dna(dna_1, dna_2)
    hamming = 0;
    dna_1.split("").each_with_index do |v, i|
        dna_2.split("")[i] != v ? hamming += 1 : hamming = hamming
    end
    hamming
end

# sample string
sample = "Que la lumiere soit e la lumiere fut"

# to display the array
print hamming_dna("", "")