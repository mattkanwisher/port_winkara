require 'dbf'
puts "opening Data/SONG.DBF"
songs = DBF::Table.new("Data/SONG.DBF", nil, 'cp874')
puts "opened database"

puts "colums -#{songs.column_names}"

directory = "kara-ultrastar"
Dir.mkdir(directory) unless File.directory?(directory)
songs.each do |song|
    puts "s---------------------------"
    puts "Title-#{song["TITLE"]}"
    puts "FILE_NAME-#{song["FILE_NAME"]}"    
    puts "LANGUAGE-#{song["LANGUAGE"]}"    
    puts "e---------------------------"

    File.open("#{directory}/#{song["TITLE"]}.txt", "w") {|f| f.write("write your stuff here") }
end