class Parser

  def get_all_files_in(folder)
    @folder = folder
    Dir.foreach(folder) do |filename|
      next if filename == '.' or filename == '..'
      puts filename
      write_file("#{filename}")
    end
  end

  def read_file(filename)
    File.read(filename)  
  end

  def write_file(data)
    File.open(data, 'w') { |file| file.write(read_file("inputs/" + data)) } 
  end


end

