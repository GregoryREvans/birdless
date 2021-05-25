import pathlib

import abjad
import baca
import evans

from birdless.lib import (
    final_warble_fingerings,
    mark_30,
    mark_45,
    mark_120,
    met_30,
    met_45,
)
from birdless.materials.instruments import instruments
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_12
from birdless.materials.timespans import handler_commands_12, rhythm_commands_12

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
        rhythm_commands_12,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_12,
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
        evans.call(
            "Voice 1",
            final_warble_fingerings,
            baca.leaves().get([_ for _ in range(100)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.BarLine(".|:", format_slot="before"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            baca.leaf(99),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(100),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", literal=True, direction=abjad.Up),
            baca.leaf(100),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", literal=True, direction=abjad.Up),
            baca.leaf(101),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", literal=True, direction=abjad.Up),
            baca.leaf(102),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", literal=True, direction=abjad.Up),
            baca.leaf(104),
        ),
        evans.attach(
            "Voice 1",
            abjad.BarLine(":|."),
            baca.leaf(101),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.2'}", direction=abjad.Up, literal=True
            ),
            baca.leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_120,
            baca.leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_45,
            baca.leaf(5),
        ),
        evans.attach(
            "Global Context",
            mark_45,
            baca.leaf(5),
        ),
        evans.attach(
            "Global Context",
            met_30,
            baca.leaf(7),
        ),
        evans.attach(
            "Global Context",
            mark_30,
            baca.leaf(7),
        ),
    ],
    score_template=score,
    time_signatures=signatures_12,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="12",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 120),
    rehearsal_mark="x5",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
