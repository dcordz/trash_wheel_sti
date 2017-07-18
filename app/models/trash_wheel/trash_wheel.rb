class TrashWheel < ApplicationRecord

  scope :mr, -> { where(type: 'MrTrashWheel') }
  scope :profs, -> { where(type: 'ProfessorTrashWheel') }
  scope :snakes, -> { where(snake: true) }

end
