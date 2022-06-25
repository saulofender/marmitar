#' Sortear marmitas
#'
#' Funcao para sortear uma marmita vegana.
#'
#' @param tipo tipo de refeicao
#' @param preco_maximo preco da refeicao
#'
#' @return uma tibble
#' @export
#'
#' @examples sortear_marmita()

sortear_marmita <-
  function(tipo = c("Sopa", "Prato", "Doce"), preco_maximo = 50) {
    marmitas_veganas %>%
      dplyr::filter(preco <= preco_maximo, tipo_refeicao %in% tipo) %>%
      dplyr::slice_sample() %>%
      dplyr::mutate(
        texto = glue::glue(
          "Refeicao  sugerida: {nome} \n
      Ingredientes: {descricao} \n
      Preco: R$ {preco} \n
      Acesse o site: {url}"
        )
      ) %>%
      dplyr::pull(texto)
  }
