class Person < ApplicationRecord
	has_many :created_releases, class_name: "Release", foreign_key: :creator_id, dependent: :destroy
	has_many :receptor_releases, class_name: "Release", foreign_key: :receptor_id, dependent: :destroy
end
