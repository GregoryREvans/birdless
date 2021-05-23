import abjad
handler_to_value = abjad.OrderedDict(
    [
        (
            'flourish_rhythm_handler',
            abjad.OrderedDict(
                [
                    ('state', 0),
                    ]
                ),
            ),
        (
            'mult_rhythm_handler',
            abjad.OrderedDict(
                [
                    (
                        'state',
                        abjad.OrderedDict(
                            [
                                ('divisions_consumed', 21),
                                ('incomplete_last_note', True),
                                ('logical_ties_produced', 39),
                                ('talea_weight_consumed', 139),
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
                                ('divisions_consumed', 1),
                                ('logical_ties_produced', 1),
                                ]
                            ),
                        ),
                    ]
                ),
            ),
        ]
    )