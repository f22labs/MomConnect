class Dakia
  
  include Plivo

  AUTH_ID = "MAM2E3ZMMXNTRHMZIXMZ"
  AUTH_TOKEN = "OWQwMjJmZDI2OTJhNGYzYjRhNDJjNjQ3OGE3ZWZj"
  
  attr_reader :dest
  attr_reader :message
  attr_reader :sender
  
  def initialize(dest, message)
    @dest = dest
    @message = message
    @sender = RestAPI.new(AUTH_ID, AUTH_TOKEN)
  end

  def send_message
    sender.send_message(options)
  end

  def validated_dest
    if dest.length == 10
      return "91#{dest}"
    elsif dest.length >10
      return "91#{dest[-10..-1]}"
    end
  end

  def sms_auth_id
    ENV['SMS_AUTH_ID'] || "MAM2E3ZMMXNTRHMZIXMZ"
  end
  
  def source
    ENV['SMS_SOURCE_NUMBER'] || "919840792922"
  end

  def options
    { src: source, dst: validated_dest, text: message }
  end  
end