class Search < ActiveRecord::Base
  validates :console, presence: true;
  validates :game_name, presence: true;

  has_many :results
end
