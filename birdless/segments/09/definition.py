import pathlib

import abjad
import baca
import evans

from birdless.lib import mark_130
from birdless.materials.instruments import instruments
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_09
from birdless.materials.timespans import handler_commands_09, rhythm_commands_09

fermata_markup = abjad.Markup(
    r"""\markup { \center-column{\raise #-1 c.6' \musicglyph #"scripts.ulongfermata"} }""",
    direction=abjad.Up,
    literal=True,
)

abjad.tweak(fermata_markup).X_offset = -0.5

maker = evans.SegmentMaker(
    instruments=instruments,
    names=[
        '"Alto Saxophone"',
    ],
    abbreviations=[
        '" "',
    ],
    name_staves=True,
    commands=[
        rhythm_commands_09,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_09,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.attach(
            "Voice 1",
            abjad.StopHairpin(),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(0, pitched=True),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(-1, pitched=True),
        ),
        evans.attach(
            "Staff 1",
            fermata_markup,
            baca.leaf(-3, grace=False),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", literal=True, direction=abjad.Up),
            baca.leaf(-3),
        ),
        evans.attach(
            "Global Context",
            mark_130,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_09,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="09",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 130),
    rehearsal_mark="",
    fermata="scripts.ulongfermata",
    page_break_counts=[90],
)

maker.build_segment()
