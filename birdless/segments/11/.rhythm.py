import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'note_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 4),
                                ('logical_ties_produced', 4),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'slap_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 2),
                    ]
                ),
            ),
        ]
    )