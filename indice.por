programa {
 inclua biblioteca Graficos --> g
    inclua biblioteca Util --> u
    funcao inicio() {
        g.iniciar_modo_grafico(verdadeiro)
        g.definir_dimensoes_janela(800, 500)
        g.definir_titulo_janela("Batalha-Pokemon-RPG")
        // desenho do céu do cenario
        g.definir_cor(g.criar_cor(150, 216, 250))
        g.desenhar_retangulo(0, 0, 800, 260, falso, verdadeiro)
           // deseno da grama do cenario
        g.definir_cor(g.criar_cor(120, 190, 100))
        g.desenhar_retangulo(0, 260, 800, 240, falso, verdadeiro)
        // desenho da plataforma do pokemon inimigo
        g.definir_cor(g.criar_cor(90, 130, 80))
        g.desenhar_elipse(475, 165,250, 65, verdadeiro)
        // desenho da plataforma do meu pokemon
         g.definir_cor(g.criar_cor(80, 120, 70))
        g.desenhar_elipse(90, 365,290, 75, verdadeiro)
        //sprite do pokemon inimigo
        g.definir_cor(g.criar_cor(110, 60,150))
        g.desenhar_retangulo(540, 90, 110, 100,  falso,verdadeiro)
        // sprite do meu pokemon
        g.definir_cor(g.criar_cor(255, 215,0))
        g.desenhar_retangulo(180, 280, 110, 100, falso,verdadeiro)

        g.renderizar()

        escreva("janela gráfica aberta! Utilizando a biblioteca de gráficos do portugol")
    
        u.aguarde(5000)
  
  }
}