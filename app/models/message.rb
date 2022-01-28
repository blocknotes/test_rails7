class Message < ApplicationRecord
  validates :author, presence: true, allow_blank: false
  validates :content, presence: true, allow_blank: false
end
