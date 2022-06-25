test_that("buscar_marmitas_veganas() works", {

  # Executar a funcao uma vez
  resultado_marm_veg <- buscar_marmitas_veganas()

  # Testar a classe
  expect_s3_class(resultado_marm_veg, "tbl_df")

    # testar numero de colunas
  expect_equal(ncol(resultado_marm_veg), 6)

  # testar numero de linhas
  expect_gt(nrow(resultado_marm_veg), 41)

  # Testar a classe das variaveis
  expect_equal(class(resultado_marm_veg$item), "character")
  expect_equal(class(resultado_marm_veg$nome), "character")
  expect_equal(class(resultado_marm_veg$descricao), "character")
  expect_equal(class(resultado_marm_veg$preco), "numeric")
  expect_equal(class(resultado_marm_veg$tipo_refeicao), "character")
  expect_equal(class(resultado_marm_veg$url), "character")

})
