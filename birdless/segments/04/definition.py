import pathlib

import abjad
import baca
import evans

from birdless.lib import hide_tuplet, mark_84
from birdless.materials.instruments import instruments
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_04
from birdless.materials.timespans import handler_commands_04, rhythm_commands_04

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\diagram-nine-span-markup", literal=True),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 6
abjad.tweak(start_span).staff_padding = 6

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
        rhythm_commands_04,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_04,
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
        evans.call(
            "Voice 1",
            hide_tuplet,
            abjad.select(),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(53),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-one-markup", literal=True, direction=abjad.Up),
            baca.leaf(53),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-two-markup", literal=True, direction=abjad.Up),
            baca.leaf(54),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-three-markup", literal=True, direction=abjad.Up),
            baca.leaf(55),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            baca.leaf(82),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            baca.leaf(83),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-twelve-markup", literal=True, direction=abjad.Up),
            baca.leaf(84),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(56),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("f"),
            baca.leaf(82),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            baca.leaf(87),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            baca.leaf(99),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            baca.leaf(99),
        ),
        evans.call("Voice 1", abjad.glissando, baca.leaves().get([99, 100, 101])),
        evans.attach(
            "Global Context",
            mark_84,
            baca.leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_04,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="04",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 84),
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
