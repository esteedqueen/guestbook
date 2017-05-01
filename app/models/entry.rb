class Entry < ActiveRecord::Base
  validates :name, :message, presence: true
end
