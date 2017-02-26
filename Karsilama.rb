use_bpm 120

dum_name = :bd_tek
tak_name = :perc_snap

live_loop :bass do
  dumtak
  dumtak
  dumtak
  dum
  dum
  dum
end

define :dumtak do
  sample dum_name
  sample tak_name
  sleep 0.5
  sample tak_name
  sleep 0.25
  sample tak_name
  sleep 0.25
end

define :dum do
  sample dum_name
  sample tak_name
  sleep 0.25
  sample tak_name
  sleep 0.25
end