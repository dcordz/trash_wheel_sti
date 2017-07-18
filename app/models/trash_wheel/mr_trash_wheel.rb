class MrTrashWheel < TrashWheel
  before_create :has_snake

  validates :title, presence: true

  def has_snake
    self.snake = true
  end

  def call_snake
    'ssssssssssssssssssssssssnek'
  end

end
