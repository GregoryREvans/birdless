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

##
## 07
##

pairs_07 = (
    (3, 2),
    (9, 8),
    (7, 8),
    (6, 8),
    (5, 8),
    (4, 8),
    (2, 4),
    (5, 8),
    (6, 8),
    (7, 8),
)

meters_07 = [abjad.Meter(_) for _ in pairs_07]

signatures_07 = [abjad.TimeSignature(_) for _ in meters_07]

signatures_07.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_07 = abjad.math.cumulative_sums([_.duration for _ in signatures_07])

##
## 08
##

pairs_08 = (
    (8, 4),
    (7, 4),
    (6, 4),
    (5, 4),
    (5, 6),
    (4, 4),
    (3, 4),
    (4, 4),
    (3, 4),
    (4, 6),
    (3, 6),
    (7, 4),
    (6, 4),
    (5, 4),
    (4, 6),
    (5, 6),
)

meters_08 = [abjad.Meter(_) for _ in pairs_08]

signatures_08 = [abjad.TimeSignature(_) for _ in meters_08]

signatures_08.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_08 = abjad.math.cumulative_sums([_.duration for _ in signatures_08])

##
## 09
##

pairs_09 = (
    (5, 6),
    (4, 6),
    (3, 6),
    (4, 6),
    (5, 6),
    (6, 8),
)

meters_09 = [abjad.Meter(_) for _ in pairs_09]

signatures_09 = [abjad.TimeSignature(_) for _ in meters_09]

signatures_09.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_09 = abjad.math.cumulative_sums([_.duration for _ in signatures_09])

##
## 10
##

pairs_10 = (
    (4, 4),
    (3, 4),
    (4, 4),
    (2, 4),
    (4, 4),
    (1, 4),
    (7, 16),
    (6, 8),
    (5, 4),
)

meters_10 = [abjad.Meter(_) for _ in pairs_10]

signatures_10 = [abjad.TimeSignature(_) for _ in meters_10]

signatures_10.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_10 = abjad.math.cumulative_sums([_.duration for _ in signatures_10])

##
## 11
##

pairs_11 = (
    (4, 4),
    (5, 6),
    (4, 4),
    (3, 4),
    (4, 6),
    (4, 4),
    (3, 4),
    (2, 4),
    (3, 6),
    (4, 4),
    (3, 4),
    (2, 4),
    (1, 4),
)

meters_11 = [abjad.Meter(_) for _ in pairs_11]

signatures_11 = [abjad.TimeSignature(_) for _ in meters_11]

signatures_11.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_11 = abjad.math.cumulative_sums([_.duration for _ in signatures_11])

##
## 12
##

pairs_12 = (
    (7, 4),
    (6, 4),
    (8, 4),
    (5, 4),
    (7, 4),
    (7, 8),
    (6, 8),
    (5, 8),
    (6, 8),
)

meters_12 = [abjad.Meter(_) for _ in pairs_12]

signatures_12 = [abjad.TimeSignature(_) for _ in meters_12]

signatures_12.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_12 = abjad.math.cumulative_sums([_.duration for _ in signatures_12])

##
## 13
##

pairs_13 = (
    (7, 8),
    (6, 8),
)

meters_13 = [abjad.Meter(_) for _ in pairs_13]

signatures_13 = [abjad.TimeSignature(_) for _ in meters_13]

signatures_13.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_13 = abjad.math.cumulative_sums([_.duration for _ in signatures_13])

##
## 14
##

pairs_14 = (
    (3, 4),
    (4, 4),
    (5, 4),
    (3, 4),
    (4, 4),
    (3, 4),
    (4, 4),
    (3, 4),
    (4, 4),
    (2, 4),
    (4, 4),
    (3, 4),
    (4, 4),
    (1, 4),
    (3, 4),
    (1, 4),
)

meters_14 = [abjad.Meter(_) for _ in pairs_14]

signatures_14 = [abjad.TimeSignature(_) for _ in meters_14]

signatures_14.append(abjad.TimeSignature((3, 16)))  # for ending skip

bounds_14 = abjad.math.cumulative_sums([_.duration for _ in signatures_14])
