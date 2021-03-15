# Extends the Ruby core `String` class to conveniently create secret strings.
class ::String
  def secret
    SecretString::String.new(self)
  end
end
