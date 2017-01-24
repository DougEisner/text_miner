require 'validator'



class Separator

  def words(text)
    if text.is_word?
      text.split
    else
      nil
    end
  end



  class Separator

    def initialize(options)
      @s = options

    end

    words = Validator.new(text).is_word


  # describe '#phone_number' do
  #   it 'returns a hash with phone number and area code' do
  #     expect(@s.phone_number('919-555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
  #     expect(@s.phone_number('(919) 555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
  #     expect(@s.phone_number('9195551212')).to eq({'area_code': '919', 'number': '555-1212'})
  #     expect(@s.phone_number('919.555.1212')).to eq({'area_code': '919', 'number': '555-1212'})
  #     expect(@s.phone_number('919 555-1212')).to eq({'area_code': '919', 'number': '555-1212'})
  #     expect(@s.phone_number('555-121')).to eq nil
  #   end
  # end









end
