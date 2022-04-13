
# load from ORCID
# knit requires ORCID_TOKEN in .Renviron
# rcrossref requires crossref_email in .Renviron
#
# create a pubs.bib file that contains specific types of works from orcid user
orcid2bib <- function(orcid, name, types) {

  works <- rorcid::works(ORCID)
  # get rid of the "works" class so you can use filter
  works <- as_tibble(works)
  works <- filter(works, type %in% types)
  # add the "works" class back in so you can use rorcid functions
  class(works) <- "works"
  doi <- rorcid::identifiers(works)
  uri <- stringr::str_c("", doi, sep="https://doi.org/")
  pubs <- rcrossref::cr_cn(dois = uri, format = "bibtex")
  invisible(lapply(pubs, write, paste0(name, ".bib"), append=FALSE))
}
