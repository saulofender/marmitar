
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
#> Preco: R$ 16.9 
#> 
#> Acesse o site: https://www.beleaf.com.br/minestrone

# só quero gastar até R$:
marmitar::sortear_marmita(preco_maximo = 22)
#> Refeicao  sugerida: Bolo de Banana com Amêndoas e Sem Açúcar 
#> 
#> Ingredientes: Aveia, Linhaça, Chia E Canela - Sem Açúcar 
#> 
#> Preco: R$ 8.9 
#> 
#> Acesse o site: https://www.beleaf.com.br/bolo-de-banana-com-am-ndoas-e-sem-acucar
```

E por fim, também é possível sortear combos de 12, 21 ou 30 marmitas com
a função `sortear_combo_marmitas()`

``` r
# sortear um combo de 12 marmitas
marmitar::sortear_combo_marmitas(12)
#> # A tibble: 12 x 6
#>    item  nome                               descricao  preco tipo_refeicao url  
#>    <chr> <chr>                              <chr>      <dbl> <chr>         <chr>
#>  1 15    Baião de Dois                      310 g | M~  27.7 Prato         http~
#>  2 22    Poke de Atum do Futuro™            360 g | E~  29.9 Prato         http~
#>  3 34    Cheesecake de Amora                Biomassa ~  10.5 Doce          http~
#>  4 3     Sugestão do Chef                   5 refeiçõ~ 154.  Prato         http~
#>  5 17    Moqueca de Coração de Pupunha      360 g | A~  29.9 Prato         http~
#>  6 29    Couve-Flor e Grão de Bico ao Curry 360 g | C~  24.9 Prato         http~
#>  7 28    Almôndegas do Futuro™              360 g | E~  29.9 Prato         http~
#>  8 11    Porção De Kibe De Berinjela        300 g | 6~  26.9 Prato         http~
#>  9 40    Mousse de Maracujá                 Creme de ~   9.5 Doce          http~
#> 10 42    Creme de Cenoura                   Leite de ~  16.9 Sopa          http~
#> 11 5     Maklub com Falafel e Pasta de Tofu 340 g | A~  31.9 Prato         http~
#> 12 38    Brownie de Chocolate e Nozes       Chocolate~   8.9 Doce          http~
```
