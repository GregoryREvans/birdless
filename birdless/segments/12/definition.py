import pathlib

import abjad
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

# start_span = abjad.StartTextSpan(
#     left_text=abjad.Markup(r"\rit-markup"),
#     style="dashed-line-with-arrow",
# )
# abjad.tweak(start_span).padding = 3
# abjad.tweak(start_span).staff_padding = 3

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
            lambda _: abjad.Selection(_).components(abjad.Score),
        ),
        "skips",
        handler_commands_12,
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
            final_warble_fingerings,
            lambda _: abjad.Selection(_).leaves().get([_ for _ in range(100)]),
        ),
        evans.attach(
            "Voice 1",
            abjad.BarLine(".|:", format_slot="before"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("p"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.StartHairpin("<"),
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("fff"),
            lambda _: abjad.Selection(_).leaf(99),
        ),
        evans.attach(
            "Voice 1",
            abjad.Dynamic("ff"),
            lambda _: abjad.Selection(_).leaf(100),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(100),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(101),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(102),
        ),
        evans.attach(
            "Voice 1",
            abjad.Markup(r"\diagram-eight-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(104),
        ),
        evans.attach(
            "Voice 1",
            abjad.BarLine(":|."),
            lambda _: abjad.Selection(_).leaf(101),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\markup { \raise #4 c.2'}", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_120,
            lambda _: abjad.Selection(_).leaf(0),
        ),
        evans.attach(
            "Global Context",
            met_45,
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Global Context",
            mark_45,
            lambda _: abjad.Selection(_).leaf(5),
        ),
        evans.attach(
            "Global Context",
            met_30,
            lambda _: abjad.Selection(_).leaf(7),
        ),
        evans.attach(
            "Global Context",
            mark_30,
            lambda _: abjad.Selection(_).leaf(7),
        ),
        # evans.attach(
        #     "Global Context",
        #     start_span,
        #     lambda _: abjad.Selection(_).leaf(3),
        # ),
        # evans.attach(
        #     "Global Context",
        #     abjad.StopTextSpan(),
        #     lambda _: abjad.Selection(_).leaf(5),
        # ),
        evans.attach(
            "Global Context",
            abjad.Markup(r"\rit-markup", direction=abjad.Up),
            lambda _: abjad.Selection(_).leaf(3),
        ),
    ],
    score_template=score,
    time_signatures=signatures_12,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/gregoryevans/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/gregoryevans/Scores/birdless/birdless/build/score_stylesheet.ily",
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
