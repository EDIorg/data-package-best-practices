# scripts/make-citation-metadata.R
# Written by Claude Opus 5.0, reviewed/edited/tested by Greg
# Source this from the book directory containing _bookmetadata.yml (or let
# it run as a prerender script)
library(yaml)
library(jsonlite)

# --- read sources ---------------------------------------------------------
bkmd_yml <- yaml::read_yaml("_bookmetadata.yml")

# pull YAML block from between the first two --- fences of index.qmd
lines  <- readLines("index.qmd")
fences <- which(trimws(lines) == "---")[1:2]
index_yml <- yaml::yaml.load(paste(lines[(fences[1] + 1):(fences[2] - 1)],
                                   collapse = "\n"))

bk <- bkmd_yml

# --- helpers --------------------------------------------------------------
split_name <- function(full) {
  parts <- strsplit(trimws(full), "\\s+")[[1]]
  list(given  = paste(utils::head(parts, -1), collapse = " "),
       family = utils::tail(parts, 1))
}

spdx <- c("CC BY" = "cc-by-4.0", "CC0" = "cc0-1.0", "CC BY-SA" = "cc-by-sa-4.0")
license_id <- unname(spdx[bk$license])

# --- .zenodo.json ---------------------------------------------------------
creators <- lapply(bk$author, function(a) {
  n <- split_name(a$name)
  c(list(name = paste0(n$family, ", ", n$given)),
    if (!is.null(a$affiliation)) list(affiliation = a$affiliation),
    if (!is.null(a$orcid))       list(orcid = as.character(a$orcid)))
})

zenodo <- list(
  title       = bk$title,
  description = trimws(bk$abstract),
  upload_type = "publication",
  publication_type = "book",
  creators    = creators,
  keywords    = as.list(index_yml$keywords),
  license     = license_id,
  version     = as.character(index_yml$citation$version)
)

jsonlite::write_json(zenodo, ".zenodo.json",
                     auto_unbox = TRUE, pretty = TRUE)

# --- CITATION.cff ---------------------------------------------------------
cff_authors <- lapply(bk$author, function(a) {
  n <- split_name(a$name)
  c(list(`given-names` = n$given, `family-names` = n$family),
    if (!is.null(a$affiliation)) list(affiliation = a$affiliation),
    # CFF requires the full ORCID URL, not the bare identifier
    if (!is.null(a$orcid)) list(orcid = paste0("https://orcid.org/", a$orcid)))
})

cff <- list(
  `cff-version` = "1.2.0",
  message  = "If you use this guide, please cite it as below.",
  title    = bk$title,
  abstract = trimws(bk$abstract),
  type     = "book",
  authors  = cff_authors,
  keywords = as.list(index_yml$keywords),
  license  = toupper(license_id),
  version  = as.character(index_yml$citation$version),
  `date-released` = format(as.Date(bk$date, "%d %B %Y"), "%Y-%m-%d")
)

yaml::write_yaml(cff, "CITATION.cff")