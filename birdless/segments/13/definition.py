import pathlib

import abjad
import baca
import evans

from birdless.materials.instruments import instruments
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_13
from birdless.materials.timespans import handler_commands_13, rhythm_commands_13

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
        rhythm_commands_13,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_13,
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
            abjad.Dynamic("fff"),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fourteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-fourteen-markup", literal=True, direction=abjad.Up),
            baca.leaf(1),
        ),
    ],
    score_template=score,
    time_signatures=signatures_13,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="13",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="|.",
    tempo=((1, 4), 30),
    rehearsal_mark=" ",
    fermata="scripts.uverylongfermata",
    page_break_counts=[90],
    colophon=abjad.Markup(r"\colophon", literal=True),
)

maker.build_segment()
