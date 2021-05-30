import abjad
info = abjad.OrderedDict(
    [
        (
            'Voice 1',
            [
                abjad.LilyPondLiteral('\\stopStaff \\once \\override Staff.StaffSymbol.line-count = #0 \\startStaff', format_slot='before', ),
                abjad.LilyPondLiteral('\\once \\override Rest.color = #white', format_slot='before', ),
                abjad.LilyPondLiteral('\\oneVoice', format_slot='absolute_before', ),
                abjad.Markup(
                    contents=['\\colophon'],
                    literal=True,
                    ),
                ],
            ),
        ]
    )