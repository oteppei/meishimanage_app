class Card < ApplicationRecord
    validates :client_name, {presence: true}
    validates :client_company, {presence: true}
end
