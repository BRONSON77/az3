class Release < ApplicationRecord
	has_many :adjuncts, dependent: :destroy
	belongs_to  :previous_release, class_name: "Release", foreign_key: 'previous_release_id', optional: true
	belongs_to :creator, class_name: "Person", foreign_key: :creator_id
	belongs_to :receptor, class_name: "Person", foreign_key: :receptor_id

	before_validation do
    self.previous_release_id = Release.all.order('id ASC').where(creator_id: self.creator_id).last.id if Release.where(creator_id: self.creator_id).present?
  end
end
