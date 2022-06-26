
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
#> Refeicao  sugerida: Frango Vegetal Desfiado com Creme de Milho 
#> 
#> Ingredientes: 340 g | Vagem e espinafre refogados. 
#> 
#> Preco: R$ 30.9 
#> 
#> Acesse o site: https://www.beleaf.com.br/frango-vegetal-desfiado-com-creme-de-milho

# só quero gastar até R$:
marmitar::sortear_marmita(preco_maximo = 22)
#> Refeicao  sugerida: Torta de Maçã com Especiarias 
#> 
#> Ingredientes: Açúcar Demerara, Aveia e Linhaça 
#> 
#> Preco: R$ 8.9 
#> 
#> Acesse o site: https://www.beleaf.com.br/torta-de-mac-com-especiarias
```

E por fim, também é possível sortear combos de 12, 21 ou 30 marmitas com
a função `sortear_combo_marmitas()`

``` r
# sortear um combo de 12 marmitas
marmitar::sortear_combo_marmitas(12)
#> # A tibble: 12 x 6
#>    item  nome                                descricao preco tipo_refeicao url  
#>    <chr> <chr>                               <chr>     <dbl> <chr>         <chr>
#>  1 33    Minestrone                          Espinafr~  16.9 Sopa          http~
#>  2 26    Yakisoba                            360 g | ~  26.9 Prato         http~
#>  3 3     Sugestão do Chef                    5 refeiç~ 154.  Prato         http~
#>  4 37    Torta de Mousse de Chocolate Sem A~ Aveia, L~  10.5 Doce          http~
#>  5 6     Falafel ao Molho de Hortelã         360 g | ~  31.9 Prato         http~
#>  6 30    Tofu Tikka Masala                   360 g | ~  27.7 Prato         http~
#>  7 9     Porção de Moqueca de Coração de Pu~ 220 g | ~  23.9 Prato         http~
#>  8 8     Porção De Strogonoff Dois Cogumelos 220 g | ~  19.9 Prato         http~
#>  9 42    Creme de Cenoura                    Leite de~  16.9 Sopa          http~
#> 10 2     Picadinho De Carne Do Mato Ao Vinho 360 g | ~  29.9 Prato         http~
#> 11 36    Torta de Maçã com Especiarias       Açúcar D~   8.9 Doce          http~
#> 12 3     Sugestão do Chef                    5 refeiç~ 154.  Prato         http~
```
