import pathlib

import abjad
import baca
import evans

from birdless.lib import mark_60
from birdless.materials.instruments import instruments
from birdless.materials.pitch import split_pitch_handler
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_02
from birdless.materials.timespans import handler_commands_02, rhythm_commands_02

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
        rhythm_commands_02,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_02,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        # evans.attach(
        #     "Global Context",
        #     met_108,
        #     baca.leaf(0),
        # ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-thirteen-markup", literal=True),
            baca.leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True),
            baca.leaf(2),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.3'}", direction=abjad.Up, literal=True
            ),
            baca.leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_60,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_02,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="02",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 60),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
