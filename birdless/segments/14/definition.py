import pathlib

import abjad
import evans

from birdless.lib import mark_113, on_beat_grace_handler_6, zero_padding_glissando
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_5
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_14
from birdless.materials.timespans import handler_commands_14, rhythm_commands_14

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\diagram-eleven-span-markup", literal=True),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 10
abjad.tweak(start_span).staff_padding = 10

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
        rhythm_commands_14,
        evans.attach(
            "Voice 1",
            abjad.Tie(),
            abjad.select().leaf(1),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_14,
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
            "Voice 1", abjad.glissando, abjad.select().leaves().get([0, 1, 2, 3])
        ),
        evans.attach(
            "Voice 1",
            start_span,
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            abjad.select().leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            abjad.select().leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            abjad.select().leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(16),
        ),
        evans.attach(
            "Global Context",
            mark_113,
            abjad.select().leaf(0),
        ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_6,
            abjad.select().leaves().get([10, 16, 18]),
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_5,
            abjad.select().leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            abjad.select().leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(10, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(12, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(16, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\colophon", literal=True),
            abjad.select().leaf(-2),
        ),
    ],
    score_template=score,
    time_signatures=signatures_14,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="14",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="|.",
    tempo=((1, 4), 30),
    rehearsal_mark=" ",
    fermata="scripts.uverylongfermata",
    page_break_counts=[90],
)

maker.build_segment()
