class Extractor
end


class Separator

  def initialize(options)
    @s = options

  end

  words = Validator.new(text).is_word
