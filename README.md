
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Pacote Marmitar

<!-- badges: start -->
<!-- badges: end -->

O objetivo do pacote é disponibilizar a base de dados de marmitas
veganas.

Os dados foram obtidos no site
[beleaf](https://www.beleaf.com.br/cardapio-marmitas-veganas).

## Instalação

Este pacote pode ser instalado através do [GitHub](https://github.com/)
utilizando o seguinte código abaixo em `R`:

``` r
# install.packages("devtools")
devtools::install_github("saulofender/marmitar")
library(marmitar)
```

## Exemplo

É possível buscar a base de marmitas veganas usando a função abaixo:

``` r
marmitas_veganas <- marmitar::buscar_marmitas_veganas()
```

Caso queira você também poderá usar a função `sortear_marmita()`para
sortear uma marmita:

``` r
# só uma sopinha:
marmitar::sortear_marmita(tipo = "Sopa")
#> Refeicao  sugerida: Creme de Abóbora 
#> 
#> Ingredientes: Semente de chia e gengibre 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/creme-de-abobora

# só quero gastar R$:
marmitar::sortear_marmita(preco_maximo = 22)
#> Refeicao  sugerida: Macaroni com Cheddar de Castanhas 
#> 
#> Ingredientes: 320 g | Farofa de sementes e espinafre refogado 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/macaroni-com-cheddar-de-castanhas
```

E por fim, também é possível sortear combos de 12, 21 ou 30 marmitas com
a função `sortear_combo_marmitas()`

``` r
# sortear um combo de 12 marmitas
marmitar::sortear_combo_marmitas(12)
#> # A tibble: 12 x 6
#>    item  nome                                descricao preco tipo_refeicao url  
#>    <chr> <chr>                               <chr>     <dbl> <chr>         <chr>
#>  1 21    Frango Vegetal Desfiado com Creme ~ 340 g | ~  -10  Sopa          http~
#>  2 29    Couve-Flor e Grão de Bico ao Curry  360 g | ~  -10  Prato         http~
#>  3 32    Creme de Abóbora                    Semente ~  -10  Sopa          http~
#>  4 11    Porção De Kibe De Berinjela         300 g | ~  -10  Prato         http~
#>  5 31    Paella de Frutos do Mato            360 g | ~  -10  Prato         http~
#>  6 9     Porção de Moqueca de Coração de Pu~ 220 g | ~  -10  Prato         http~
#>  7 19    Tagliatelle ao Funghi               320 g | ~  -10  Prato         http~
#>  8 20    Feijuca do Futuro™                  320 g | ~  -10  Prato         http~
#>  9 41    Nhoque com Cogumelo Portobello      360 g | ~  -10  Prato         http~
#> 10 1     Kit Vegflix - Season 2              4 refeiç~  120. Prato         http~
#> 11 10    Porção De Falafel                   200 g | ~  -10  Prato         http~
#> 12 32    Creme de Abóbora                    Semente ~  -10  Sopa          http~
```
