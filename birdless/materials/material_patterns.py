import abjad
import evans

from birdless.lib import (
    WarbleFingerings,
    slap_articulation_handler,
    slap_dynamics_08,
    squeal_dynamics,
    warble_dynamics_08,
)
from birdless.materials.pitch import (
    flourish_pitch_handler,
    mult_pitch_handler,
    slap_pitch_handler,
    split_fundamental_handler,
    teeth_pitch_handler,
    tender_mult,
    wailing_pitch_handler,
    warble_pitch_handler,
)
from birdless.materials.rhythm import (
    final_warble,
    flourish_rhythm_handler,
    mult_rhythm_handler,
    note_rhythm_handler,
    silence_handler,
    slap_rhythm_handler,
    sub_tone_rhythm_handler,
    warble_rhythm_handler,
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

teeth_pitch_handler_03 = teeth_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 2),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_03 = [
    teeth_pitch_handler_03,
    teeth_pitch_handler_03,
    teeth_pitch_handler_03,
    teeth_pitch_handler_03,
    teeth_pitch_handler_03,
    teeth_pitch_handler_03,
    mult_pitch_handler,
    mult_pitch_handler,
]

## 04

mult_rhythm_handler_04 = mult_rhythm_handler.make_persistent_copy(
    dict(
        [
            ("divisions_consumed", 2),
            ("logical_ties_produced", 4),
            ("talea_weight_consumed", 16),
        ]
    )
)

rhythm_materials_04 = [
    warble_rhythm_handler,
    warble_rhythm_handler,
    warble_rhythm_handler,
    warble_rhythm_handler,
    mult_rhythm_handler_04,
    warble_rhythm_handler,
    warble_rhythm_handler,
    mult_rhythm_handler_04,
    mult_rhythm_handler_04,
    warble_rhythm_handler,
    mult_rhythm_handler_04,
    mult_rhythm_handler_04,
]

mult_pitch_handler_04 = mult_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 3),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_04 = [
    warble_pitch_handler,
    warble_pitch_handler,
    warble_pitch_handler,
    warble_pitch_handler,
    mult_pitch_handler_04,
    warble_pitch_handler,
    warble_pitch_handler,
    mult_pitch_handler_04,
    mult_pitch_handler_04,
    warble_pitch_handler,
    mult_pitch_handler_04,
    mult_pitch_handler_04,
]

fingering_numbers = [
    1,  # a
    5,
    4,
    3,
    2,
    6,
    7,
    8,
    7,
    9,
    8,
    7,
    1,  # b
    2,
    3,
    4,
    5,
    3,
    2,
    4,
    3,
    2,
    1,
    2,
    1,  # fs
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    8,
    7,
    6,
    1,  # bf
    5,
    6,
    7,
    4,
    3,
    2,
    7,
    8,
    9,
    1,
    3,
    1,  # g
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    8,  # c
    5,
    6,
    7,
    1,
    2,
    3,
    4,
    3,
    2,
    1,
    2,
    1,  # gs
    2,
    3,
    4,
    3,
    2,
    1,
    4,
    2,
    3,
    1,
    4,
]

fingerings = [abjad.ColorFingering(_) for _ in fingering_numbers]

warble_fingerings = WarbleFingerings(fingerings_list=fingerings)

articulation_materials_04 = [
    warble_fingerings,
    warble_fingerings,
    warble_fingerings,
    warble_fingerings,
    silence_handler,
    warble_fingerings,
    warble_fingerings,
    silence_handler,
    silence_handler,
    warble_fingerings,
    silence_handler,
    silence_handler,
]

mult_rhythm_handler_05 = mult_rhythm_handler.make_persistent_copy(
    dict(
        [
            ("divisions_consumed", 7),
            ("incomplete_last_note", True),
            ("logical_ties_produced", 11),
            ("talea_weight_consumed", 40),
        ]
    )
)

rhythm_materials_05 = [
    mult_rhythm_handler_05,
]

mult_pitch_handler_05 = mult_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 11),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_05 = [
    mult_pitch_handler_05,
]

warble_rhythm_handler_06 = warble_rhythm_handler.make_persistent_copy(6)

rhythm_materials_06 = [
    warble_rhythm_handler_06,
    warble_rhythm_handler_06,
    note_rhythm_handler,
    warble_rhythm_handler_06,
    warble_rhythm_handler_06,
    warble_rhythm_handler_06,
    note_rhythm_handler,
    note_rhythm_handler,
]

teeth_pitch_handler_06 = teeth_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 3),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

warble_pitch_handler_06 = warble_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 11),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_06 = [
    warble_pitch_handler_06,
    warble_pitch_handler_06,
    teeth_pitch_handler_06,
    warble_pitch_handler_06,
    warble_pitch_handler_06,
    warble_pitch_handler_06,
    teeth_pitch_handler_06,
    teeth_pitch_handler_06,
]

fingering_numbers_06 = [
    5,  # b
    4,
    2,
    3,
    2,
    1,
    5,
    2,
    3,
    1,
    2,
    3,
    9,  # fs
    4,
    5,
    7,
    6,
    3,
    2,
    1,
    3,
    2,
    9,
    8,
    9,  # as
    2,
    4,
    3,
    5,
    4,
    6,
    5,
    7,
    6,
    8,
    1,
    2,  # g
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    8,  # c
    3,
    2,
    1,
    6,
    4,
    5,
    7,
    6,
    7,
    4,
    3,
]

fingerings_06 = [abjad.ColorFingering(_) for _ in fingering_numbers_06]

warble_fingerings_06 = WarbleFingerings(fingerings_list=fingerings_06)

articulation_materials_06 = [
    warble_fingerings_06,
    warble_fingerings_06,
    silence_handler,
    warble_fingerings_06,
    warble_fingerings_06,
    warble_fingerings_06,
    silence_handler,
    silence_handler,
]

## 07

mult_rhythm_handler_07 = mult_rhythm_handler.make_persistent_copy(
    dict(
        [
            ("divisions_consumed", 13),
            ("incomplete_last_note", True),
            ("logical_ties_produced", 24),
            ("talea_weight_consumed", 85),
        ]
    )
)

rhythm_materials_07 = [
    flourish_rhythm_handler,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
    note_rhythm_handler,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
    mult_rhythm_handler_07,
]

mult_pitch_handler_07 = mult_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 25),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

teeth_pitch_handler_07 = teeth_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 6),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_07 = [
    flourish_pitch_handler,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
    teeth_pitch_handler_07,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
    mult_pitch_handler_07,
]

## 08

warble_rhythm_handler_08 = warble_rhythm_handler.make_persistent_copy(4)

rhythm_materials_08 = [
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    slap_rhythm_handler,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    slap_rhythm_handler,
    slap_rhythm_handler,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    warble_rhythm_handler_08,
    slap_rhythm_handler,
    slap_rhythm_handler,
]

slap_pitch_handler_08 = slap_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 2),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

warble_pitch_handler_08 = warble_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 11),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_08 = [
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    slap_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    slap_pitch_handler_08,
    slap_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    warble_pitch_handler_08,
    slap_pitch_handler_08,
    slap_pitch_handler_08,
]

fingering_numbers_08 = [
    1,  # b
    2,
    3,
    4,
    5,
    4,
    3,
    2,
    1,
    2,
    3,
    4,
    1,  # fs
    4,
    3,
    2,
    5,
    7,
    6,
    7,
    8,
    9,
    8,
    9,
    3,  # as
    5,
    4,
    6,
    7,
    8,
    9,
    8,
    7,
    2,
    3,
    1,
    1,  # g
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,
    2,
    1,  # c
    6,
    7,
    8,
    2,
    6,
    7,
    8,
    3,
    4,
    5,
    8,
    4,  # gs
    3,
    2,
    1,
    2,
    3,
    4,
    3,
    2,
    1,
    2,
    3,
    2,  # d
    3,
    1,
    4,
    3,
    2,
    1,
    2,
    3,
    4,
    3,
    5,
    9,  # cs
    8,
    7,
    6,
    5,
    4,
    3,
    2,
    1,
    2,
    3,
    4,
    5,  # e
    4,
    3,
    2,
    1,
    2,
    3,
    4,
    5,
    4,
    3,
    2,
    5,  # f
    1,
    2,
    3,
    4,
    5,
    4,
    3,
    2,
    1,
    2,
    3,
    8,  # ds
    7,
    6,
    5,
    4,
    3,
    2,
    6,
    4,
    7,
    1,
    8,
]

fingerings_08 = [abjad.ColorFingering(_) for _ in fingering_numbers_08]

warble_fingerings_08 = WarbleFingerings(fingerings_list=fingerings_08)

articulation_materials_08 = [
    warble_fingerings_08,
    warble_fingerings_08,
    warble_fingerings_08,
    warble_fingerings_08,
    slap_articulation_handler,
    warble_fingerings_08,
    warble_fingerings_08,
    warble_fingerings_08,
    warble_fingerings_08,
    slap_articulation_handler,
    slap_articulation_handler,
    warble_fingerings_08,
    warble_fingerings_08,
    warble_fingerings_08,
    slap_articulation_handler,
    slap_articulation_handler,
]

dynamic_materials_08 = [
    warble_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    slap_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    slap_dynamics_08,
    slap_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    warble_dynamics_08,
    slap_dynamics_08,
    slap_dynamics_08,
]

## 09

rhythm_materials_09 = [
    slap_rhythm_handler,
    slap_rhythm_handler,
    slap_rhythm_handler,
    slap_rhythm_handler,
    slap_rhythm_handler,
    note_rhythm_handler,
]

slap_pitch_handler_09 = slap_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 19),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_09 = [
    slap_pitch_handler_09,
    slap_pitch_handler_09,
    slap_pitch_handler_09,
    slap_pitch_handler_09,
    slap_pitch_handler_09,
    wailing_pitch_handler,
]

articulation_materials_09 = [
    slap_articulation_handler,
    slap_articulation_handler,
    slap_articulation_handler,
    slap_articulation_handler,
    slap_articulation_handler,
    silence_handler,
]

## 10

rhythm_materials_10 = [
    note_rhythm_handler,
    sub_tone_rhythm_handler,
]

flourish_pitch_handler_10 = flourish_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 9),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

teeth_pitch_handler_10 = teeth_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 42),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_10 = [
    teeth_pitch_handler_10,
    flourish_pitch_handler_10,
]

dynamic_materials_10 = [
    squeal_dynamics,
    silence_handler,
]

## 11

rhythm_materials_11 = [
    note_rhythm_handler,
    slap_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    slap_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    slap_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    note_rhythm_handler,
]

slap_pitch_handler_11 = slap_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 36),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

teeth_pitch_handler_11 = teeth_pitch_handler.make_persistent_copy(
    dict(
        [
            ("pitch_count", 48),
            ("chord_boolean_count", -1),
            ("chord_groups_count", -1),
        ]
    )
)

pitch_materials_11 = [
    teeth_pitch_handler_11,
    slap_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
    slap_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
    slap_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
    teeth_pitch_handler_11,
]

articulation_materials_11 = [
    silence_handler,
    slap_articulation_handler,
    silence_handler,
    silence_handler,
    slap_articulation_handler,
    silence_handler,
    silence_handler,
    silence_handler,
    slap_articulation_handler,
    silence_handler,
    silence_handler,
    silence_handler,
    silence_handler,
]

## 12

rhythm_materials_12 = [
    final_warble,
    note_rhythm_handler,
]

final_warble_pitch = evans.PitchHandler(
    ["a''"],
    name="final warble",
)

wailing = evans.PitchHandler(
    [["fs'", "g''", "ctqs'''", "fs'''"]],
    name="wailing",
)

pitch_materials_12 = [
    final_warble_pitch,
    wailing,
]

## 13

rhythm_materials_13 = [
    note_rhythm_handler,
]

final_wailing = evans.PitchHandler(
    [["cs''", "ds'''", "aqs'''"]],
    name="wailing",
)

pitch_materials_13 = [
    final_wailing,
]

## 14

rhythm_materials_14 = [
    note_rhythm_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
    silence_handler,
    note_rhythm_handler,
]

pitch_materials_14 = [
    tender_mult,
    tender_mult,
    silence_handler,
    tender_mult,
    silence_handler,
    tender_mult,
    silence_handler,
    tender_mult,
    silence_handler,
    silence_handler,
    tender_mult,
    silence_handler,
    tender_mult,
    silence_handler,
    silence_handler,
    silence_handler,
    silence_handler,
]
