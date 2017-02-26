use_bpm 70

define :chord_player do |root, option|
  play chord(root - 12, option), sustain: 3, release:1
  play root - 12, sustain: 4
  4.times do
    play chord(root, option)
    sleep 1
  end
end

live_loop :three_words do
  use_synth :sine
  chord_player :ef4,:major
  chord_player :bf3,:major
  chord_player :c4,:minor
  chord_player :af3,:sus2
end
