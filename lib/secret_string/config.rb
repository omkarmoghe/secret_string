module SecretString
  # SecretString configuration options.
  class Config
    attr_reader :replacement

    def initialize
      @replacement = ->(_str) { "[secret]" }
    end

    def replace_with(&block)
      @replacement = block
    end
  end
end
