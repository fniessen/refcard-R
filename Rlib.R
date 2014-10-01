#  Rlib.R -- Collection of utility and convenience functions
#
#  Copyright (C) 2014-2014 Fabrice Niessen
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 3 of the License, or
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

warn_if_not_empty <- function (..., env = parent.frame())
{
  check <- eval(substitute(alist(...)))
  cat(paste(check, "empty?  "))

  expr <- eval(parse(text=check))

  if (nrow(expr) == 0) {
    cat("OK!\n\n")
    return(TRUE)
  } else {
    cat(nrow(expr), "contradictions...\n")
    print(expr)
    cat("\n")
  }

}

## warn_if_not_empty(pfisortie[is.na(pfisortie$frmArretDate), ])
##
## warn_if_not_empty(pfisortie[is.na(pfisortie$stgNom.x), ])
