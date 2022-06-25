
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Pacote Marmitar

<!-- badges: start -->
<!-- badges: end -->

O objetivo do pacote é disponibilizar a base de dados de marmitas
veganas. Os dados foram obtidos no site
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
#> Refeicao  sugerida: Arroz com Funghi ao Creme de Castanhas 
#> 
#> Ingredientes: 360 g | Pupunha, cenoura e abobrinha grelhada 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/arroz-de-funghi-ao-creme-de-castanhas-1

# só quero gastar R$:
marmitar::sortear_marmita(preco_maximo = 22)
#> Refeicao  sugerida: Creme de Abóbora 
#> 
#> Ingredientes: Semente de chia e gengibre 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/creme-de-abobora
```

E por fim, também é possível sortear combos de 12, 21 ou 30 marmitas com
a função `sortear_combo_marmitas()`

``` r
# sortear um combo de 12 marmitas
marmitar::sortear_combo_marmitas(12)
#> # A tibble: 12 x 6
#>    item  nome                                descricao preco tipo_refeicao url  
#>    <chr> <chr>                               <chr>     <dbl> <chr>         <chr>
#>  1 33    Minestrone                          Espinafr~  -10  Sopa          http~
#>  2 28    Almôndegas do Futuro™               360 g | ~  -10  Prato         http~
#>  3 41    Nhoque com Cogumelo Portobello      360 g | ~  -10  Prato         http~
#>  4 1     Kit Vegflix - Season 2              4 refeiç~  120. Prato         http~
#>  5 37    Torta de Mousse de Chocolate Sem A~ Aveia, L~  -10  Doce          http~
#>  6 29    Couve-Flor e Grão de Bico ao Curry  360 g | ~  -10  Prato         http~
#>  7 5     Maklub com Falafel e Pasta de Tofu  340 g | ~  -10  Prato         http~
#>  8 33    Minestrone                          Espinafr~  -10  Sopa          http~
#>  9 8     Porção De Strogonoff Dois Cogumelos 220 g | ~  -10  Prato         http~
#> 10 17    Moqueca de Coração de Pupunha       360 g | ~  -10  Prato         http~
#> 11 37    Torta de Mousse de Chocolate Sem A~ Aveia, L~  -10  Doce          http~
#> 12 37    Torta de Mousse de Chocolate Sem A~ Aveia, L~  -10  Doce          http~
```
