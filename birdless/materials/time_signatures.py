import abjad

##
## 01
##

pairs_01 = (
    (4, 4),
    (3, 4),
    (5, 6),
    (4, 4),
)

meters_01 = [abjad.Meter(_) for _ in pairs_01]

signatures_01 = [abjad.TimeSignature(_) for _ in meters_01]

signatures_01.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_01 = abjad.math.cumulative_sums([_.duration for _ in signatures_01])

##
## 02
##

pairs_02 = (
    (7, 8),
    (6, 8),
    (5, 8),
)

meters_02 = [abjad.Meter(_) for _ in pairs_02]

signatures_02 = [abjad.TimeSignature(_) for _ in meters_02]

signatures_02.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_02 = abjad.math.cumulative_sums([_.duration for _ in signatures_02])

##
## 03
##

pairs_03 = (
    (4, 4),
    (3, 4),
    (4, 4),
    (2, 4),
    (4, 4),
    (1, 4),
    (9, 8),
    (8, 8),
)

meters_03 = [abjad.Meter(_) for _ in pairs_03]

signatures_03 = [abjad.TimeSignature(_) for _ in meters_03]

signatures_03.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_03 = abjad.math.cumulative_sums([_.duration for _ in signatures_03])

##
## 04
##

pairs_04 = (
    (6, 4),
    (7, 4),
    (5, 4),
    (8, 4),
    (7, 8),
    (3, 4),
    (7, 4),
    (6, 8),
    (5, 8),
    (4, 4),
    (4, 8),
    (3, 8),
)

meters_04 = [abjad.Meter(_) for _ in pairs_04]

signatures_04 = [abjad.TimeSignature(_) for _ in meters_04]

signatures_04.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_04 = abjad.math.cumulative_sums([_.duration for _ in signatures_04])

##
## 05
##

pairs_05 = (
    (4, 8),
    (5, 8),
    (6, 8),
    (7, 8),
    (8, 8),
    (9, 8),
)

meters_05 = [abjad.Meter(_) for _ in pairs_05]

signatures_05 = [abjad.TimeSignature(_) for _ in meters_05]

signatures_05.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_05 = abjad.math.cumulative_sums([_.duration for _ in signatures_05])

##
## 06
##

pairs_06 = (
    (6, 4),
    (7, 4),
    (4, 4),
    (5, 4),
    (8, 4),
    (4, 4),
    (3, 4),
    (4, 4),
)

meters_06 = [abjad.Meter(_) for _ in pairs_06]

signatures_06 = [abjad.TimeSignature(_) for _ in meters_06]

signatures_06.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_06 = abjad.math.cumulative_sums([_.duration for _ in signatures_06])
