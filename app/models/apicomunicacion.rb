class Apicomunicacion

  include HTTParty

  # accessToken = '52fb811b9d30632bbf616231fbfc2e9d0d9ea2b5'
  # mydevice = 'banco_de_mecanismos'

  # base_uri "https://api.particle.io"

  # default_params access_token: accessToken
  # format :json

  # def self.for (keyword)
  #   get("v1/devices/banco_de_mecanismos", query: {q: keyword})
  # end

  # def self.for (keyword)
  #   url = 'https://api.particle.io/v1/devices/230029000c47343438323536/?access_token=52fb811b9d30632bbf616231fbfc2e9d0d9ea2b5'
  #   response = HTTParty.get(url)
  #   info = response.parsed_response
  #   info = info["id"]
  # # etc
  # end
  
  

  def self.for (estado)

    # leds = Leds.find(1)
    # leds.estado = estado
    # leds.save

    @urlstring_to_post = 'https://api.particle.io/v1/devices/230029000c47343438323536/led?access_token=52fb811b9d30632bbf616231fbfc2e9d0d9ea2b5'

    @result = HTTParty.post(@urlstring_to_post.to_str, 
    :body => { :arg => estado
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )

    info = @result["return_value"]
  # etc
  end



end