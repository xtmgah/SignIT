#' Retrieves built-in reference mutation signature sets
#'
#' Built in mutation signature sets provide reference data for
#' the analysis of N-of-1 mutation catalogs. This function provides
#' an interface for loading these reference datasets.
#'
#' @param signature_set The name of the reference signature dataset.
#'                      currently available options: 
#'                      cosmic_30 (default) - the WTSI 30 SNV signatures
#'                      cosmic_30_exome - WTSI signatures adjusted for exome trinucleotide frequencies
#'                      nikzainal_sv - Structural variant signature frequencies
#'
#' @return Data frame containing reference signatures in wide format, with a mutation_type column
#'
#' @import dplyr
#'
#' @export

get_reference_signatures <- function(signature_set = 'cosmic_30') {
  available_reference_sets <- c(
    'cosmic_30',
    'cosmic_30_exome',
    'nikzainal_sv'
  )

  if (! signature_set %in% available_reference_sets) {
    stop(sprintf('Signature set %s is not available', signature_set))
  }
  
  has_data <- function(x) { sum(!is.na(x)) > 0 }

  if (signature_set == 'cosmic_30') {  
    data('wtsi_30_snv_signatures') 
    wtsi_30_snv_signatures %>%
      arrange(mutation_type)
  } else if (signature_set == 'cosmic_30_exome') {
    data('wtsi_30_snv_signatures_exome')
    wtsi_30_snv_signatures_exome %>%
      arrange(mutation_type)
  } else if (signature_set == 'nikzainal_sv') {
    data('nikzainal_sv_signatures')
    nikzainal_sv_signatures %>%
      arrange(mutation_type)
  }
}

