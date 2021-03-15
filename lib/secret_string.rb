require_relative "secret_string/version"
require_relative "secret_string/string"
require_relative "secret_string/config"
require_relative "secret_string/ext/string"

# SecretString
module SecretString
  class << self
    def new(*args)
      SecretString::String.new(*args)
    end

    def config
      @config ||= SecretString::Config.new
    end
  end
end
