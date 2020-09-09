# A function that accepts number of files
# and display the content of each file

def my_cat *args
    if !args.empty?
        data = String.new
        args.each do |file|
            data += FileTest.exist?(File.expand_path(file)) ? File.open(file).read : "No such File or Directory: #{file}"
        end
        return data
    else
        return STDIN.read
    end
end

# A call to the function with sample files to display
puts my_cat "my_hamming_dna.rb", "my_roman_numerals_convertr.rb"