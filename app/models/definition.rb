class Definition < ActiveRecord::Base
  validates :word, presence: true, uniqueness: true
  validates :meaning, presence: true
end
