# :nodoc:
class Cipher::CaesarEncoderCommand
  def initialize(shift, text)
    @shift = shift
    @text = text.clone
  end

  def proccess
    @text.tap do
      # If we will not clone string, we will have inifinity loop
      @text.clone.each_byte.each_with_index do |ord, i|
        @text[i] = (ord + @shift).chr(Encoding::UTF_8)
      end
    end
  end

  def self.proccess(shift, text)
    new(shift, text).proccess
  end
end
