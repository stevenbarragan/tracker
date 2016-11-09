# == Schema Information
#
# Table name: tasks
#
#  id          :uuid             not null, primary key
#  name        :string
#  description :text
#  state       :integer
#  project_id  :uuid
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
  belongs_to :project

  enum state: {
    todo:          0,
    "in-progress": 10,
    done:          20
  }

  validates :project, presence: true
  validates :name, presence: true
end
