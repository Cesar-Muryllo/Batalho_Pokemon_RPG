programa {
 inclua biblioteca Graficos --> g
    inclua biblioteca Util --> u
    funcao inicio() {
        g.iniciar_modo_grafico(verdadeiro)
        g.definir_dimensoes_janela(800, 500)
        g.definir_titulo_janela("Batalha-Pokemon-RPG")
        g.renderizar()
    u.aguarde(5000)
  }
}