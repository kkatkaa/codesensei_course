class Lamp
  def turn_off
    puts "Going dark..."
  end
  def turn_on
    puts "Iluminating..."
  end
end

class BrokenLamp < Lamp
  def turn_on
    puts "Oh no..."
  end
end

class MusicLamp < Lamp
  def turn_on
  super
    puts "Playing music"
  end
end

broken_lamp = BrokenLamp.new
broken_lamp.turn_on
music_lamp = MusicLamp.new
music_lamp.turn_on

class Speaker
  def play(track_name)
    puts "Playing: #{track_name}."
  end
end

class BluetoothSpeaker < Speaker
  def play(track_name)
    puts "Streaming..."
  super
  end
end

BluetoothSpeaker.new.play("Cake By The Ocean")

class Speaker
  def play(track_name)
    puts "Playing: #{track_name}"
  end
end

class MusicBox < Speaker
  def play
    super("Locked Out Of Heaven")
  end
end

MusicBox.new.play
