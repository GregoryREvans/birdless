import abjad
import evans

met_108 = abjad.MetronomeMark((1, 4), 108)
met_108_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 108)
mark_108 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_108_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_60 = abjad.MetronomeMark((1, 4), 60)
met_60_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 60)
mark_60 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_60_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)

met_40 = abjad.MetronomeMark((1, 4), 40)
met_40_mark = abjad.MetronomeMark.make_tempo_equation_markup((1, 4), 40)
mark_40 = abjad.LilyPondLiteral(
    [
        r"^ \markup {",
        r"  \huge",
        r"  \concat {",
        f"      {str(met_40_mark)[8:]}",
        r"  }",
        r"}",
    ],
    format_slot="after",
)


def zero_padding_glissando(selections):
    abjad.glissando(selections[:], zero_padding=True, allow_repeats=True)
    for run in abjad.select(selections).runs():
        leaves = abjad.select(run).leaves()
        for leaf in leaves[1:-1]:
            abjad.tweak(leaf.note_head).Accidental.stencil = False
            abjad.tweak(leaf.note_head).transparent = True
            abjad.tweak(leaf.note_head).X_extent = (0, 0)


def with_sharps(selections):
    abjad.iterpitches.respell_with_sharps(selections)


on_beat_grace_handler = evans.OnBeatGraceHandler(
    number_of_attacks=[
        9,
        8,
        9,
        6,
        11,
        3,
        9,
        8,
        9,
        8,
        9,
        10,
        10,
        8,
        9,
        8,
    ],
    durations=[
        2,
        1,
        1,
        1,
        2,
        1,
        2,
        1,
        1,
    ],
    font_size=-4,
    leaf_duration=(1, 100),
    attack_number_forget=False,
    durations_forget=False,
    boolean_vector=[1],
    vector_forget=False,
    name="On Beat Grace Handler",
)

tone_to_air = evans.TextSpanHandler(
    span_one_positions=["tone", "air"],
    span_one_style="dashed-line",
    span_one_padding=9,
    attach_span_one_to="bounds",
    forget=False,
)

flutter_tongue = evans.ArticulationHandler(
    ["tremolo"],
    forget=False,
)
