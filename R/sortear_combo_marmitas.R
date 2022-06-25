#' Sortear combo marmitas
#'
#' Essa funcao ajuda escolher quais marmitas veganas colocar no combo.
#'
#' @param n_marmitas combos de 12, 21 ou 30 marmitas
#'
#' @return uma tibble
#' @export
#'
#' @examples sortear_combo_marmitas()

sortear_combo_marmitas <- function(n_marmitas = 12){
  marmitas_veganas %>%
    dplyr::sample_n(n_marmitas, replace = TRUE)
}
