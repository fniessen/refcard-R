#  Rlib.R -- Collection of utility and convenience functions
#
#  Copyright (C) 2014-2014 Fabrice Niessen
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  A copy of the GNU General Public License is available at
#  http://www.r-project.org/Licenses/

## Convert all factors from a data frame to character
unfactor <- function (df) {
  cols <- sapply(df, is.factor)         # find the factors
  df[cols] <- lapply(df[cols], as.character) # convert to character
  df
}
