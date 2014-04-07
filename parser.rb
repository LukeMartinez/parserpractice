class Parser

  def get_all_files_in(folder)
    Dir.foreach(folder) do |filename|
      next if filename == '.' or filename == '..'
      puts filename
      write_file("#{filename}", folder)
    end
  end

  def read_file(filename)
    File.read(filename)  
  end

  def write_file(data, folder)
    File.open(data, 'w') { |file| file.write(read_file(folder + "/" + data)) } 
  end


end

