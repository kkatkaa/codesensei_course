players = ["Derek Smith",
"Calvin Natt",
"Kareem Abdul-Jabbar",
"Larry Bird",
"Darrell Griffith"]


players.each do |player|

   first_name_letter = player.split[0][0]
   second_name_letter = player.split[1][0]
   inicjaly = first_name_letter, second_name_letter
   puts "#{inicjaly.join}, #{player}"
end
