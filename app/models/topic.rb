class Topic < ApplicationRecord
  validates :title, :content,presence: true
end
