test_that("sortear_combo_marmitas() works", {

  # Executar a funcao uma vez
  resultado_sortear_combo <- sortear_combo_marmitas()

  # Testar a classe
  expect_s3_class(resultado_sortear_combo, "tbl_df")

  # testar numero de colunas
  expect_equal(ncol(resultado_sortear_combo), 6)

  # testar numero de linhas
  expect_gt(nrow(resultado_sortear_combo), 11)

  # Testar a classe das variaveis
  expect_equal(class(resultado_sortear_combo$item), "character")
  expect_equal(class(resultado_sortear_combo$nome), "character")
  expect_equal(class(resultado_sortear_combo$descricao), "character")
  expect_equal(class(resultado_sortear_combo$preco), "numeric")
  expect_equal(class(resultado_sortear_combo$tipo_refeicao), "character")
  expect_equal(class(resultado_sortear_combo$url), "character")

})
