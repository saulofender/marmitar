test_that("sortear_marmita() works", {

  # Executar a funcao uma vez
  resultado_sortear_marmita <- sortear_marmita()

  # Testar a classe
  expect_s3_class(resultado_sortear_marmita, "character")

})
