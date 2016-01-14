require 'unirest'
# These code snippets use an open-source library.

# These code snippets use an open-source library.
response = Unirest.get "https://ahmedakhan-game-review-information-v1.p.mashape.com/api/v1/information?console=xbox+360&game_name=call+of+duty+black+ops",
  headers:{
    "X-Mashape-Key" => "ihcXvJd1i7msh2dlr52NpatDarIBp1chZukjsnY9NVv4n319iI",
    "Accept" => "application/json"
  }

  hashed = response.body
  raw_data = hashed["result"]
  raw_data.each do |category, items|
      if items.is_a? Array
        puts category
        items.each do |item|
          print "#{item}, "
        end
      elsif items.is_a? Hash
        puts category
        items.each do |itemkey, itemvalue|
          puts "#{itemkey}: #{itemvalue}"
        end
      else
        puts "#{category}: #{items}"
      end
    end