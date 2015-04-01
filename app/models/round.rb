class Round < ActiveRecord::Base
  belongs_to :user
  has_many :ends

  def total
    total = 0
    ends.each do |x|
      x.arrows.each do |arrow|
        total += arrow.score
      end
    end
    return total
  end
end