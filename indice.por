programa {
    inclua biblioteca Graficos --> g
    inclua biblioteca Util --> u
    const inteiro LARGURA = 800
    const inteiro ALTURA = 500

    funcao inicio() {
      //informaçoes do meu pokemon
      cadeia meu_nome = "Pikachu"
      inteiro meu_hp = 100
      inteiro meu_hp_max = 100

      cadeia inimigo_nome = "Gengar"
      inteiro inimigo_hp = 120
      inteiro inimigo_hp_max = 120
      
      inteiro dano = u.sorteia(22,35)
      inimigo_hp = inimigo_hp - dano
        // - = subtração
        // + = adição
        // / = divisão
        // % = resto da divisão

        escreva("===FICHA DA BATALHA===\n")
        escreva(meu_nome, " -HP:", meu_hp, "/", meu_hp_max, "\n")
        escreva(inimigo_nome, " -HP:", inimigo_hp, "/", inimigo_hp_max, "(sofreu ", dano, " de dano)","\n")

        // cadeia = "dsahfsgfhgfgfahggfhasfghhafajef"
        // inteiro = 1, 10, 100, 1000,10000
        // real = 546.20, 1-.50, 50.99
        // caractere = 'M'
        // logico = verdadeiro, falso

        g.iniciar_modo_grafico(verdadeiro)
        g.definir_dimensoes_janela(LARGURA, ALTURA)
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