class Parser

  def read_all_files_in(folder)
    Dir.foreach(folder) do |filename|
      next if filename == '.' or filename == '..'
      read_file("./#{folder}/#{filename}")
    end
  end

  def read_file(filename)
    contents = File.read(filename)
    puts contents
  end

end

p = Parser.new

