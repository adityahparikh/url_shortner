class UrlShortner::Generator
  def self.generate
    new.generate
  end

  def generate
    short_code = generateShortCode(UrlShortner.unique_key_length)
    UrlShortner.base_url + short_code
  end

  private
  def generateShortCode (length)
    charset = Array('A'..'Z') + Array('a'..'z')
    Array.new(length) { charset.sample }.join
  end
end