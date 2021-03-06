% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_mutation_types.R
\name{mutations_to_catalog}
\alias{mutations_to_catalog}
\title{Given chromosome, position, reference, and altered allele values, returns a mutation catalog.
Assumes SNV mutation types conforming to the standard 96-element mutation types.}
\usage{
mutations_to_catalog(chr, pos, ref, alt, genome = NULL)
}
\arguments{
\item{chr}{Character vector of chromosomes (must match genome seqlevels)}

\item{pos}{Integer vector of mutation positions}

\item{ref}{Character vector of reference alleles (A, C, G, or T)}

\item{alt}{Character vector of mutated alleles (A, C, G, or T)}

\item{genome}{BSgenome object from which to derive trinucleotide context sequences}
}
\value{
Data frame with columns mutation_type and count
}
\description{
Given chromosome, position, reference, and altered allele values, returns a mutation catalog.
Assumes SNV mutation types conforming to the standard 96-element mutation types.
}
