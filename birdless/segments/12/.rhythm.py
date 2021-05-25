import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'Rhythm Handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 5),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 95),
                                ('talea_weight_consumed', 140),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
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
        ]
    )