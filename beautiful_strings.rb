def how_beautiful(string)
		counts = []
		beauty_score = 0
		string.split(//).uniq.each do |c|
			 counts.push(string.count(c)) if ('a'..'z').include?(c)
		end
		counts.sort!.reverse!.each_with_index do |c, i|
			beauty_score += c * (26 - i)
		end
		beauty_score
end

File.open(ARGV[1], 'w') do |out|
	File.open(ARGV[0]).each_with_index do |l, i|
		out.puts "Case ##{i}: #{how_beautiful(l.downcase)}" unless i == 0
	end	
end