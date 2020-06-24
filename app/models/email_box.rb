class EmailBox < ApplicationRecord
  validates :sending_email, presence: true
  validates :recieving_email, presence: true
  validates :subject, presence: true
end
