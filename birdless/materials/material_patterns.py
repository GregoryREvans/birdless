from birdless.materials.pitch import (
    mult_pitch_handler,
    slap_pitch_handler,
    split_fundamental_handler,
    teeth_pitch_handler,
)
from birdless.materials.rhythm import (
    mult_rhythm_handler,
    note_rhythm_handler,
    silence_handler,
    slap_rhythm_handler,
)

## 01

rhythm_materials_01 = [
    note_rhythm_handler,
    note_rhythm_handler,
    slap_rhythm_handler,
    note_rhythm_handler,
]

pitch_materials_01 = [
    teeth_pitch_handler,
    teeth_pitch_handler,
    slap_pitch_handler,
    teeth_pitch_handler,
]

## 02

rhythm_materials_02 = [
    note_rhythm_handler,
]

pitch_materials_02 = [
    split_fundamental_handler,
]

## 03

rhythm_materials_03 = [
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    mult_rhythm_handler,
    mult_rhythm_handler,
]

pitch_materials_03 = [
    teeth_pitch_handler,
    teeth_pitch_handler,
    teeth_pitch_handler,
    teeth_pitch_handler,
    teeth_pitch_handler,
    teeth_pitch_handler,
    mult_pitch_handler,
    mult_pitch_handler,
]
