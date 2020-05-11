class Attendance < ApplicationRecord
  belongs_to :guest, class_name: "User"
  belongs_to :event
  validates :guest_id, uniqueness: { scope: [:event_id] }
end
 