import abjad
info = dict(
    [
        (
            'Voice 1',
            [
                abjad.LilyPondLiteral('\\stopStaff \\once \\override Staff.StaffSymbol.line-count = #0 \\startStaff', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Rest.transparent = ##t', format_slot='before', ),
                abjad.LilyPondLiteral('\\oneVoice', format_slot='absolute_before', ),
                ],
            ),
        ]
    )