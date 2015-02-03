$requiredBeginnerDirectory = File.join(File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns"),"WorldOfWarcraftAddOn")
file $requiredBeginnerDirectory do |task|
	mkdir task.name
end
$requiredIntermediateDirectory = File.join(File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns"),"WorldOfWarcraftAddOnIntermediate")
file $requiredIntermediateDirectory do |task|
	mkdir task.name
end

#BEGINNER LEVEL DEPLOYMENT
$requiredbXML = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/beginner/WorldOfWarcraftAddOn.xml')
file "bXml" => [$requiredbXML, $requiredBeginnerDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOn/WorldOfWarcraftAddOn.xml")
end

$requiredbLua = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/beginner/WorldOfWarcraftAddOn.lua')
file "bLua" => [$requiredbLua, $requiredBeginnerDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOn/WorldOfWarcraftAddOn.lua")
end

$requiredbToc = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/beginner/WorldOfWarcraftAddOn.toc')
file "bToc" => [$requiredbToc, $requiredBeginnerDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOn/WorldOfWarcraftAddOn.toc")
end

file "buildb" => ["bXml", "bLua", "bToc"] do |task|
	puts 'Build all beginner and deployed to WoW'
end
#END BEGINNER LEVEL DEPLOYMENT

#INTERMEDIATE LEVEL DEPLOYMENT
$requirediXML = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/intermediate/WorldOfWarcraftAddOnIntermediate.xml')
file "iXml" => [$requirediXML, $requiredIntermediateDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOnIntermediate/WorldOfWarcraftAddOnIntermediate.xml")
end

$requirediLua = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/intermediate/WorldOfWarcraftAddOnIntermediate.lua')
file "iLua" => [$requirediLua, $requiredIntermediateDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOnIntermediate/WorldOfWarcraftAddOnIntermediate.lua")
end

$requirediToc = File.expand_path('~/Programming/WoW/WorldOfWarcraftAddOn/intermediate/WorldOfWarcraftAddOnIntermediate.toc')
file "iToc" => [$requirediToc, $requiredIntermediateDirectory] do |task|
  cp task.prerequisites.first, File.expand_path("/Applications/World\ of\ Warcraft/Interface/AddOns/WorldOfWarcraftAddOnIntermediate/WorldOfWarcraftAddOnIntermediate.toc")
end

file "buildi" => ["iXml", "iLua", "iToc"] do |task|
	puts 'Build all intermediate and deployed to WoW'
end
#END INTERMEDIATE LEVEL DEPLOYMENT


#TESTING STUFF BELOW

file "test" => '/Documents/Nodejs' do |task|
	cp task.prerequisites.first, '/Documents/output.txt'
end

file 'go' => 'bar.txt' do |task|
  #touch 'foo.txt'
  cp task.prerequisites.first, 'test.txt'
end

#Copy a file with a relative path
file 'c' => File.expand_path('~/Documents/bar.txt') do |task|
  cp task.prerequisites.first, File.expand_path('~/Documents/test.txt')
end

task 'p' do
  puts(File.expand_path('~/Documents/bar.txt'))
end