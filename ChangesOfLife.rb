use_bpm 140

define :basis do |a, b|
  play chord(a, :major)
  sleep 0.75
  play chord(a, :major)
  sleep 0.75
  play chord(b, :major)
  sleep 0.75
  play chord(b, :major)
  sleep 0.75
  play chord(b, :major)
  sleep 1
end

#=== first ===
live_loop :changeoflife do
  use_synth :supersaw
  cue :hihat
  cue :kick
  3.times do
    basis :Ef4, :Bf3
  end
  basis :Gf4, :Df4
end

# paste when you want to start hihat
in_thread do
  sync :hihat
  loop do
    with_fx :mono do
      sample :drum_cymbal_closed
      sleep 0.5
      sample :drum_cymbal_closed
      sleep 0.25
      sample :drum_cymbal_closed
      sleep 0.25
    end
  end
end

# when you want to start kick
in_thread do
  sync :kick
  loop do
    sample :drum_heavy_kick, amp:2, attack_level:3
    sample :drum_bass_hard
    sleep 1
  end
end



