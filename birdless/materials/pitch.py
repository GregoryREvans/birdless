import evans

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
    ],
    forget=False,
)
