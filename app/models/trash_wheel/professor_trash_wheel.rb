class ProfessorTrashWheel < TrashWheel

  def initialize(options = {})
    super(options.merge(trashy: false))
  end

  def share_a_fact
    FACTS.sample
  end

  FACTS = [
    "The pom pom crab always surrounds itself with cheerleaders and pays no mind to fear leaders. Rally people to your cause like a pom pom crab.",
    "Cue the Sarah McLaughlin music. Each year 100,000 animals die from plastic bags. You can save them by ditching the bag!",
    "Guitarfish always feel the music inside them. They have become one with their instrument. They are guitars now. That's how metal they are."
  ]

end
