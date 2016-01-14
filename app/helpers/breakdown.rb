helpers do
  def generate_response(game, platform)
      game = game.to_s
      platform = platform.to_s
      if game.include?(" ")
        game = game.downcase.gsub!(" ", "+")
      end

      if platform.include?(" ")
        platform = platform.downcase.gsub!(" ", "+")
      end
    response = Unirest.get "https://ahmedakhan-game-review-information-v1.p.mashape.com/api/v1/information?console=#{platform}&game_name=#{game}",
    headers:{
      "X-Mashape-Key" => "ihcXvJd1i7msh2dlr52NpatDarIBp1chZukjsnY9NVv4n319iI",
      "Accept" => "application/json"
    }
    response
  end

  def access_response_result (response)
    data = response.body["result"]
    data
  end

  def display_data(data)
    data.each do |category, items|
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
  end
end