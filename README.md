
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
#> Refeicao  sugerida: Minestrone 
#> 
#> Ingredientes: Espinafre, abobrinha e feijão branco 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/minestrone

# só quero gastar R$:
marmitar::sortear_marmita(preco_maximo = 22)
#> Refeicao  sugerida: Tutu de Feijão e Tofu Defumado 
#> 
#> Ingredientes: 360 g | Arroz integral, couve, abóbora e banana glaceadas 
#> 
#> Preco: R$ -10 
#> 
#> Acesse o site: https://www.beleaf.com.br/tutu-de-feijao-e-tofu-defumado
```

E por fim, também é possível sortear combos de 12, 21 ou 30 marmitas com
a função `sortear_combo_marmitas()`

``` r
# sortear um combo de 12 marmitas
marmitar::sortear_combo_marmitas(12)
#> # A tibble: 12 x 6
#>    item  nome                                descricao preco tipo_refeicao url  
#>    <chr> <chr>                               <chr>     <dbl> <chr>         <chr>
#>  1 37    Torta de Mousse de Chocolate Sem A~ Aveia, L~   -10 Doce          http~
#>  2 8     Porção De Strogonoff Dois Cogumelos 220 g | ~   -10 Prato         http~
#>  3 22    Poke de Atum do Futuro™             360 g | ~   -10 Prato         http~
#>  4 21    Frango Vegetal Desfiado com Creme ~ 340 g | ~   -10 Sopa          http~
#>  5 2     Picadinho De Carne Do Mato Ao Vinho 360 g | ~   -10 Prato         http~
#>  6 2     Picadinho De Carne Do Mato Ao Vinho 360 g | ~   -10 Prato         http~
#>  7 24    Macaroni com Cheddar de Castanhas   320 g | ~   -10 Prato         http~
#>  8 9     Porção de Moqueca de Coração de Pu~ 220 g | ~   -10 Prato         http~
#>  9 14    Porção de Bobó de Banana da Terra   220 g | ~   -10 Prato         http~
#> 10 8     Porção De Strogonoff Dois Cogumelos 220 g | ~   -10 Prato         http~
#> 11 5     Maklub com Falafel e Pasta de Tofu  340 g | ~   -10 Prato         http~
#> 12 13    Porção de Feijuca do Futuro         220 g | ~   -10 Prato         http~
```
