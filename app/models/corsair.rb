class Corsair < ApplicationRecord
  validates :first_name, length: {maximum: 20}
  validates :age, :inclusion =>{:in => (15..120)}
  validates :slack_handle, format: { without: /\s/ }
  validates :github_handle, format: { without: /\s/ }
end
