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
    left_text=abjad.Markup(r"\diagram-eleven-span-markup"),
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
            lambda _: abjad.Selection(_).leaf(1),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_14,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     lambda _: abjad.Selection(_),
        # ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            lambda _: abjad.Selection(_).leaves().get([0, 1, 2, 3]),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            lambda _: abjad.Selection(_).leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(9),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eleven-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(14),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin(">"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(12),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(16),
        ),
        evans.attach(
            "Global Context",
            mark_113,
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler_6,
            lambda _: abjad.Selection(_).leaves().get([10, 16, 18]),
        ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_5,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            lambda _: abjad.Selection(_).leaves(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(10, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(12, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(16, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\colophon"),
            lambda _: abjad.Selection(_).leaf(-2),
        ),
    ],
    score_template=score,
    time_signatures=signatures_14,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/birdless/birdless/build/score_stylesheet.ily",
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
