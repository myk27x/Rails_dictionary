class Definition < ActiveRecord::Base
  validates :word, presence: true
  validates :meaning, presence: true
end
