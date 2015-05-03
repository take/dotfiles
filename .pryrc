begin
  require 'awesome_print'
  AwesomePrint.pry!
  require 'tapp'
  require 'table_print'
rescue LoadError => err
  puts 'failed to require.. :('
  puts err
end
