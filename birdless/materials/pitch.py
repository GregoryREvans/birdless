import evans

octave_up = evans.PitchHandler(
    [12],
    forget=True,
    name="octave_up",
)

teeth_pitch_handler = evans.PitchHandler(
    [1, 4, 0, 7, 8],
    forget=False,
)

slap_source = evans.Sequence([5, 2, 6, 9]).permutations().flatten().transpose(12)

slap_pitch_handler = evans.PitchHandler(
    slap_source,
    forget=False,
)

squeal_pitch_source = evans.Sequence([_ + 24 for _ in range(10)]).mirror(
    sequential_duplicates=False,
)

squeal_pitch_walk_1 = evans.Sequence(squeal_pitch_source).random_walk(
    length=38,
    step_list=[1],
    random_seed=1,
)

squeal_pitch_handler_1 = evans.PitchHandler(
    squeal_pitch_walk_1,
    forget=False,
)

squeal_pitch_walk_2 = evans.Sequence(squeal_pitch_source).random_walk(
    length=38,
    step_list=[1, 1, 2],
    random_seed=1,
)

squeal_pitch_handler_2 = evans.PitchHandler(
    squeal_pitch_walk_2,
    forget=False,
)

squeal_pitch_walk_3 = evans.Sequence(squeal_pitch_source).random_walk(
    length=38,
    step_list=[3, 3, 4],
    random_seed=1,
)

squeal_pitch_handler_3 = evans.PitchHandler(
    squeal_pitch_walk_3,
    forget=False,
)

d_partials = evans.Sequence([_ + 2 for _ in range(10)]).mirror(
    sequential_duplicates=False,
)

split_pitch_walk = evans.Sequence(d_partials).random_walk(
    length=38,
    step_list=[1],
    random_seed=1,
)

split_pitches = [
    evans.JIPitch("d'", f"{_}/1", with_quarter_tones=True) for _ in split_pitch_walk
]

split_pitch_handler = evans.PitchHandler(
    split_pitches,
    forget=False,
)

split_fundamental_handler = evans.PitchHandler(
    [
        ["cqs''", "g''", "e'''", "bf'''"],
        ["cqs''", "g''", "e'''", "bf'''"],
        ["gtqs'", "bqf''", "f'''"],
    ],
    forget=False,
)

mult_pitch_handler = evans.PitchHandler(
    [
        ["gtqs'", "bqf''", "f'''"],
        ["aqf''", "bqf''"],
        ["gtqs'", "af''"],
        ["aqf''", "bqf''"],
        ["d'", "ctqs''", "as''", "ds'''", "fs'''"],
        ["dqs'", "d''", "atqs''", "ds'''"],
        ["dqs'", "dqs''", "fqs''", "b''", "dtqs'''"],
        ["c''", "eqf''", "d'''", "gs'''"],
        ["c''", "eqf''", "d'''", "gs'''"],
        ["c''", "eqf''", "d'''", "gs'''"],
        ["af'", "bf'"],
        ["bf'", "af''"],
        ["fqs'", "e''", "bqs''"],
        ["e'", "gs'", "f''", "bqs''"],
        ["e'", "f''", "b''"],
        ["e'", "f''"],
        ["fqs'", "e''", "bqs''"],
        ["aqf''", "bqf''"],
        ["fqs'", "e''", "bqs''"],
        ["e'", "gs'", "f''", "bqs''"],
        ["e'", "f''", "b''"],
        ["e'", "f''"],
        ["fqs'", "e''", "bqs''"],
        ["aqf''", "bqf''"],
        ["fqs'", "e''", "bqs''"],
        ["aqf''", "bqf''"],
    ],
    forget=False,
)

warble_list = [0, 2, 9, 1, 10, 3, 11, 5, 4, 7, 8, 6]

warble_fractions = [f"{_}" for _ in warble_list]

warble_source = evans.PitchClassSet(warble_fractions).transpose(9)

warble_series = evans.Sequence(warble_source).matrix().potamia().flatten()


def elongate_series(series, repetitions):
    out = []
    for pitch in series:
        for _ in range(repetitions):
            out.append(pitch)
    return out


final_warble = elongate_series(warble_series, 12)

for i, _ in enumerate(final_warble):
    if _ == 0:
        final_warble[i] = 12

# [
#     "a'", # 6 bis options
#     "fs'", # 3 bis options
# ],

warble_pitch_handler = evans.PitchHandler(
    final_warble,
    forget=False,
    apply_all=True,
    apply_all_spelling="sharp",
    name="warble_pitch_handler",
)
