import pathlib

import abjad
import evans

from birdless.lib import mark_40
from birdless.materials.instruments import instruments
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_05
from birdless.materials.timespans import handler_commands_05, rhythm_commands_05

start_span = abjad.StartTextSpan(
    left_text=abjad.Markup(r"\diagram-five-markup"),
    style="solid-line-with-hook",
)
abjad.tweak(start_span).padding = 7
abjad.tweak(start_span).staff_padding = 7

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
        rhythm_commands_05,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_05,
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        # evans.attach(
        #     "Global Context",
        #     met_108,
        #     lambda _: abjad.Selection(_).leaf(0),
        # ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     lambda _: abjad.Selection(_),
        # ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-four-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-four-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-four-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(8),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-four-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-four-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(18),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ten-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(7),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ten-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(16),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-ten-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(20),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(20),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            lambda _: abjad.Selection(_).leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Voice 1",
            start_span,
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            lambda _: abjad.Selection(_).leaf(15),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(1),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(4),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("pp"),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(10),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("mp"),
            lambda _: abjad.Selection(_).leaf(14),
        ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            lambda _: abjad.Selection(_).leaves().get([1, 2, 3, 4]),
        ),
        evans.call(
            "Voice 1",
            abjad.glissando,
            lambda _: abjad.Selection(_).leaves().get([10, 11, 12, 13, 14]),
        ),
        evans.attach(
            "Voice 1",
            abjad.StopTextSpan(),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Global Context",
            mark_40,
            lambda _: abjad.Selection(_).leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_05,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=False,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="05",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 40),
    rehearsal_mark="",
    fermata="scripts.ufermata",
    page_break_counts=[90],
)

maker.build_segment()
