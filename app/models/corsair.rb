class Corsair < ApplicationRecord
  validates :first_name, length: {maximum: 20}
  validates :age, :inclusion => {:in => 1..6.5}
  validates :slack_handle, format: { without: /\s/ }
  validates :github_handle, format: { without: /\s/ }
end
