class Validator

  def is_binary?(text)
    if
      /^[0|1]+$/.match(text)
      true
    else
      false
    end
  end


  def is_binary_even?(text)
    if
      /0$/.match(text)
      true
    else
      false
    end
  end

  def is_hex?(text)
    !!/^[0-9a-f]+$/i.match(text)
  end

  def is_word?(text)
    if is_only_letters?(text)
      true
    elsif starts_with_numbers?(text) and ends_with_letters?(text)
      true
    else
      false
    end
  end

  def is_only_letters?(text)
    !!/^[a-z\-\s]+$/i.match(text)
  end

  def starts_with_numbers?(text)
    !!/^[0-9]+/.match(text)
  end

  def ends_with_letters?(text)
    !!/[a-z\-]+$/i.match(text)
  end

  def are_words?(text, **options)
    count = options[:count]
    if is_only_letters?(text) and count_not_given?(count)
      true
    elsif starts_with_numbers?(text) and ends_with_letters?(text) and count_not_given?(count)
      true
    elsif is_only_letters?(text) and !count_not_given?(count) and    count_num_words(text) == count
      true
    elsif starts_with_numbers?(text) and ends_with_letters?(text) and !count_not_given?(count) and count_num_words(text) == count
      true
    else
      false
    end
  end

  def count_not_given?(count)
   count.nil?
  end

  def count_num_words(text)
    text.scan(/(\w|-)+/).size
  end

  def is_phone_number?(phone_number)
    !!/^\D?\d{3}\D?\D?\d{3}\D?\d{4}/.match(phone_number)
  end

  def is_money?(money)
    !!/^\$\d{1,3}(?:\,?[0-9]{3})*(?:\.[0-9]{2})?$/.match(money)
  end

  def is_zip_code?(zip_code)
    !!/^([0-9]{5})(?:-[0-9]{4})?$/.match(zip_code)
  end

  def is_date?(date)
    !!/^([0-9]{1,4})(\D[0-9]{1,2})(\D[0-9]{1,4})/.match(date)
  end


end
