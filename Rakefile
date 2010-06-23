require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('nice_scaffold', '0.0.2') do |p|
  p.description    = "Rails scaffold."
  p.url            = "http://github.com/seeweer/nice_scaffold"
  p.author         = "Artur Małecki"
  p.email          = "seeweer@gmail.com"
  p.development_dependencies = []
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }

