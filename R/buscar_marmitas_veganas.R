#' Buscar marmitas veganas
#'
#' Permite obter a base de marmitas veganas.
#'
#' @return uma tibble
#' @export
#'
#' @examples buscar_marmitas_veganas()

buscar_marmitas_veganas <- function() {
  html <- "https://www.beleaf.com.br/cardapio-marmitas-veganas" %>%
    xml2::read_html()

  url <- html %>%
    xml2::xml_find_all("//a[contains(@class, 'product-item-link')]") %>%
    purrr::map(~ xml2::xml_attr(.x, "href")) %>%
    purrr::map_dfr(~ tibble::enframe(purrr::set_names(.x, "url")), .id = "item") %>%
    dplyr::select("url" = value) %>%
    tidyr::drop_na()


  nm <- c("nome", "descricao", "preco")
  infos <-
    html %>% xml2::xml_find_all("//div[contains(@class, 'product-item-details')]") %>%
    purrr::map(~ stringr::str_squish(xml2::xml_text(xml2::xml_children(.x)))) %>%
    purrr::map_dfr(~ tibble::enframe(purrr::set_names(.x, nm)), .id = "item") %>%
    tidyr::pivot_wider() %>%
    dplyr::mutate(
      preco = readr::parse_number(
        stringr::str_trim(stringr::str_extract(preco,"[A-Z].+\\s")),
        locale = readr::locale(decimal_mark = ",")),
      #preco = readr::parse_number(preco, locale = readr::locale(decimal_mark = ",")),
      tipo_refeicao = dplyr::case_when(
        stringr::str_detect(nome, "Bolo|Mousse|Brownie|Cheesecake|Torta") ~ "Doce",
        stringr::str_detect(nome, "Creme de|Minestrone") ~ "Sopa",
        TRUE ~ "Prato"
      )
    )


  dplyr::bind_cols(infos, url)
}

