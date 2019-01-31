class Pet
  attr_reader :hunger, :happiness, :sleepiness
  attr_accessor :event
  attr_writer :health

  MAX = 200
  MIN = 0
  STEP = 20

  def initialize
    self.hunger = MAX * 0.5
    self.happiness = MAX * 0.5
    self.sleepiness = MAX * 0.5
    self.event = :idle
    self.health = MAX
  end

  def play
    self.happiness += STEP
    self.event = :play
    self.hunger -= STEP
    self.sleepiness -= STEP * 2
  end

  def feed
    self.hunger += STEP
    self.event = :feed
    self.sleepiness -= STEP
  end

  def rest
    self.sleepiness += STEP
    self.event = :rest
    self.hunger -= STEP * 3
  end

  def dead?
    health.zero?
  end

  def mood
    case health
    when 0..60
      :sad
    when 61..120
      :worried
    else
      :happy
    end
  end

  def to_json
    {
        hunger: hunger,
        happiness: happiness,
        sleepiness: sleepiness,
        mood: mood,
        health: health,
        event: event,
        dead: dead?
    }
  end

  def health
    if @health < MIN
      MIN
    elsif @health > MAX
      MAX
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
      self.health += STEP * 0.5
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
