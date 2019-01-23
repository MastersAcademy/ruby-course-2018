class Pet
  attr_reader :hunger, :happiness, :sleepiness
  attr_accessor :event
  attr_writer :health

  MAX = 100
  MIN = 0
  STEP = 5

  def initialize
    self.health = MAX
    self.hunger = MAX / 2
    self.happiness = MAX / 2
    self.sleepiness = MAX / 2
    self.event = :idle
  end

  def rest
    self.sleepiness += STEP
    self.health += STEP / 2
    self.happiness += STEP / 2
    self.hunger -= STEP / 2
    self.event = :rest
  end

  def play
    self.happiness += STEP
    self.hunger -= STEP
    self.sleepiness -= STEP
    self.event = :play
  end

  def feed
    self.hunger += STEP
    self.happiness += STEP / 2
    self.health += STEP / 2
    self.sleepiness -= STEP / 2
    self.event = :feed
  end

  def dead?
    health.zero?
  end

  def mood
    case health
    when 0..33
      :sad
    when 33..66
      :worried
    else
      :happy
    end
  end

  def fart
    case hunger
    when 0..33
      :happy
    when 33..66
      :its_ok
    when 66..89
      :almost_full
    else
      :fart
    end
  end

  def to_json
    {
      health: health,
      hunger: hunger,
      happiness: happiness,
      sleepiness: sleepiness,
      mood: mood,
      fart: fart,
      event: event,
      dead: dead?
    }
  end

  # noinspection RubyResolve
  def health
    if @health.negative?
      0
    elsif @health > 100
      100
    else
      @health
    end
  end

  def hunger=(value)
    @hunger = process(value)
  end

  def happiness=(value)
    @happiness = process(value)
  end

  def sleepiness=(value)
    @sleepiness = process(value)
  end

  def process(value)
    if value < MIN
      self.health -= STEP
      MIN
    elsif value > MAX
      self.health -= STEP
      MAX
    else
      value
    end
  end
end
