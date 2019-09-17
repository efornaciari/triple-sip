class Sipper < ApplicationRecord
  has_many :sips
  accepts_nested_attributes_for :sips

  def self.all_with_best_time
    Sipper.joins(:sips).order(:time).to_a
  end

  def min_time
    sips.minimum(:time)
  end

  def min_formatted_time
    formatted_time(min_time)
  end

  private

  def formatted_time(time)
    remainder = time
    minutes = remainder / 60_000
    remainder = remainder % 60_000
    seconds = remainder / 1000
    remainder = remainder % 1000
    milliseconds = remainder
    "#{minutes.to_s.rjust(2, '0')}:#{seconds.to_s.rjust(2, '0')}.#{milliseconds.to_s.rjust(3, '0')}"
  end
end
