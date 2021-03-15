module SecretString
  # String replacement to prevent accidental leaking of sensitive information.
  class String < ::String
    def inspect
      SecretString.config.replacement.call(self)
    end

    # Don't create a new object.
    def secret
      self
    end
  end
end
