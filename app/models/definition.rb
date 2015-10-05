class Definition < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :meaning, presence: true

  has_many :examples

  paginates_per 10

  def fancy?
    word.length > 16
  end
end
