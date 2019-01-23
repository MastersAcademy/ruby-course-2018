class Pet
  attr_reader :hunger, :happiness, :sleepiness
  attr_accessor :event
  attr_writer :health

  MAX = 100
  MIN = 0
  STEP = 10

  def initialize
    self.health = MAX
    self.hunger = MAX / 2
    self.happiness = MAX / 2
    self.sleepiness = MAX / 2
    self.event = :idle
  end

  def rest
    self.sleepiness += STEP
    self.event = :rest
    self.hunger -= STEP
  end

  def play
    self.happiness += STEP
    self.event = :play
    self.hunger -= STEP
    self.sleepiness -= STEP / 2
  end

  def feed
    self.hunger += STEP
    self.event = :feed
    self.sleepiness -= STEP
  end

  def dead?
    health.zero?
  end

  def mood
    case health
    when 0..33
      :sad
    when 34..66
      :worried
    else
      :happy
    end
  end

  def to_json
    {
        health: health,
        hunger: hunger,
        happiness: happiness,
        sleepiness: sleepiness,
        mood: mood,
        event: event,
        dead: dead?
    }
  end

  def health
    if @health < 0
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
    @happiness = value
    if value < MIN
      self.hunger -= STEP
      self.sleepiness -= STEP
      @happiness = MIN
    elsif value > MAX
      self.health += STEP / 2
      @happiness = MAX
    else
      @happiness
    end
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
