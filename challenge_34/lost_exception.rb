# frozen_string_literal: true

class LostException < StandardError
  def initialize
    super()
  end

  def message
    "The list of values can not be unsorted and have repeated values."
  end
end

