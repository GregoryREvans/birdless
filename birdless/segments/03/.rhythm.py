import abjad
handler_to_value = dict(
    [
        (
            'note_rhythm_handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 6),
                                ('logical_ties_produced', 6),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        (
            'mult_rhythm_handler',
            dict(
                [
                    (
                        'state',
                        dict(
                            [
                                ('divisions_consumed', 2),
                                ('logical_ties_produced', 4),
                                ('talea_weight_consumed', 16),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )