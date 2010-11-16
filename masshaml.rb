files = Dir.glob(ARGV[0]+"/*").to_a.map{|f| f.to_s}
files.each do |f|
  `html2haml #{f} > #{f.split('.')[0] + '.haml'}`
  `rm #{f}`
end
