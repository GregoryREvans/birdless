import abjad
import evans
from abjadext import rmakers

silence_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
    rmakers.force_rest(abjad.select().leaves(pitched=True)),
)

silence_handler = evans.RhythmHandler(
    rmaker=silence_maker,
    forget=True,
    name="silence_handler",
)

##
##

note_rhythm_maker = rmakers.stack(
    rmakers.NoteRhythmMaker(),
)

note_rhythm_handler = evans.RhythmHandler(
    rmaker=note_rhythm_maker,
    forget=True,
    name="note_rhythm_handler",
)

##
##

slap_rhythm_maker = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (-1 1)) -1 1 -1 (1 (-1 1))))",
            "(1 (-2 (1 (1 -1)) (1 (1 1))))",
            "(1 ((1 (1 1)) (1 (-1 1)) (1 (-1 1))))",
            "(1 ((1 (1 1)) (1 (1 -1)) -1 1))",
            "(1 (-1 (1 (1 1)) -2 (1 (-1 1))))",
        ]
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

slap_rhythm_handler = evans.RhythmHandler(
    rmaker=slap_rhythm_maker,
    forget=False,
    name="slap_rhythm_handler",
)

##
##

mult_rhythm_maker = rmakers.stack(
    rmakers.talea(
        [3, 2, 6, 5, 2, 3, 4], 8, extra_counts=[0, -1, 2, 0, -3, 0, 0, 4, 3, 0, 2, 1]
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

mult_rhythm_handler = evans.RhythmHandler(
    rmaker=mult_rhythm_maker,
    forget=False,
    name="mult_rhythm_handler",
)

##
##

warble_rtm_string = "(1 ((2 (1 1)) (1 (1 1)) (2 (1 2 1 1 1)) (3 (1 1 1))))"


def make_rotations(rtm_string, rotations):
    out = []
    for rotation in range(rotations):
        new_rtm = evans.rotate_tree(rtm_string, rotation)
        funnels = evans.funnel_inner_tree_to_x(rtm_string=new_rtm, x=1)
        for funnel in funnels:
            out.append(funnel)
    return out


warble_rotations_and_funnels = make_rotations(warble_rtm_string, 12)

final_warble = evans.Sequence(warble_rotations_and_funnels).reverse()

warble_rhythm_maker = rmakers.stack(
    evans.RTMMaker(final_warble),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

warble_rhythm_handler = evans.RhythmHandler(
    rmaker=warble_rhythm_maker,
    forget=False,
    name="warble_rhythm_handler",
)

flourish_rhythm_maker = rmakers.stack(
    evans.RTMMaker(
        [
            "(1 ((1 (1 2 1 1 1 1 1 1 1)) 2))",
        ]
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

flourish_rhythm_handler = evans.RhythmHandler(
    rmaker=flourish_rhythm_maker,
    forget=False,
    name="flourish_rhythm_handler",
)
