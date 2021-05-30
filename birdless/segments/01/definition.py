import pathlib

import abjad
import evans

from birdless.lib import (
    mark_108,
    on_beat_grace_handler,
    tone_to_air,
    with_sharps,
    zero_padding_glissando,
)
from birdless.materials.instruments import instruments
from birdless.materials.pitch import squeal_pitch_handler_1
from birdless.materials.score_structure import score
from birdless.materials.time_signatures import signatures_01
from birdless.materials.timespans import handler_commands_01, rhythm_commands_01

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
        rhythm_commands_01,
        evans.call(
            "score",
            evans.SegmentMaker.rewrite_meter,
            abjad.select().components(abjad.Score),
        ),
        "skips",
        handler_commands_01,
        evans.call(
            "score",
            with_sharps,
            abjad.select().components(abjad.Score),
        ),
        evans.call(
            "score",
            evans.SegmentMaker.beam_score,
            abjad.select().components(abjad.Score),
        ),
        # evans.attach(
        #     "Global Context",
        #     met_108,
        #     abjad.select().leaf(0),
        # ),
        evans.call(
            "Voice 1",
            on_beat_grace_handler,
            abjad.select().logical_ties().get([0, 1, 9]),
        ),
        # evans.call(
        #     "Staff 1",
        #     evans.annotate_leaves,
        #     abjad.select(),
        # ),
        evans.call(
            "Staff 1",
            squeal_pitch_handler_1,
            abjad.select().logical_ties(grace=True),
        ),
        evans.call(
            "Staff 1",
            zero_padding_glissando,
            abjad.select().logical_ties(grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.BreathMark(),
            abjad.select().leaf(8, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.BreathMark(),
            abjad.select().leaf(16, grace=True),
        ),
        evans.attach(
            "Staff 1",
            abjad.Articulation("snappizzicato"),
            abjad.select().leaf(20),
        ),
        evans.attach(
            "Staff 1",
            abjad.Articulation("snappizzicato"),
            abjad.select().leaf(22),
        ),
        evans.attach(
            "Staff 1",
            abjad.Articulation("snappizzicato"),
            abjad.select().leaf(25),
        ),
        evans.call(
            "Staff 1",
            tone_to_air,
            abjad.select().leaves(grace=True).get([9, 10, 11, 12, 13, 14, 15]),
        ),
        evans.attach(
            "Staff 1",
            abjad.LilyPondLiteral(
                r"\tweak NoteHead.style #'cross", format_slot="before"
            ),
            abjad.select().leaf(17),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mp"),
            abjad.select().leaf(0, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("<"),
            abjad.select().leaf(0, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("fp"),
            abjad.select().leaf(1, pitched=True, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StartHairpin("--"),
            abjad.select().leaf(1, pitched=True, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.StopHairpin(),
            abjad.select().leaf(2, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("pp"),
            abjad.select().leaf(2, pitched=True, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Dynamic("mp"),
            abjad.select().leaf(5, pitched=True, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(0, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\normale-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(3, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(r"\teeth-on-reed-markup", literal=True, direction=abjad.Up),
            abjad.select().leaf(9, grace=False),
        ),
        evans.attach(
            "Staff 1",
            abjad.Markup(
                r"\markup { \raise #4 c.2'}", direction=abjad.Up, literal=True
            ),
            abjad.select().leaf(-1, grace=False),
        ),
        evans.attach(
            "Global Context",
            mark_108,
            abjad.select().leaf(0),
        ),
    ],
    score_template=score,
    time_signatures=signatures_01,
    clef_handlers=None,
    tuplet_bracket_noteheads=False,
    add_final_grand_pause=True,
    score_includes=[
        "/Users/evansdsg2/abjad/docs/source/_stylesheets/abjad.ily",
        "/Users/evansdsg2/Scores/birdless/birdless/build/score_stylesheet.ily",
    ],
    segment_name="01",
    current_directory=pathlib.Path(__file__).resolve().parent,
    cutaway=False,
    beam_pattern="meter",
    beam_rests=False,
    barline="||",
    tempo=((1, 4), 108),
    rehearsal_mark="",
    fermata="scripts.ushortfermata",
    page_break_counts=[90],
)

maker.build_segment()
