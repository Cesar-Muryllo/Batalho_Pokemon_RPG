programa {
    inclua biblioteca Graficos --> g
    inclua biblioteca Util --> u
    const inteiro LARGURA = 800
    const inteiro ALTURA = 500

    funcao inicio() {
      //informaçoes do meu pokemon
      cadeia meu_nome = " Pikachu "
      inteiro meu_hp = 100
      inteiro meu_hp_max = 100
      //informações do pokemon inimigo
      cadeia inimigo_nome = " Gengar "
      inteiro inimigo_hp = 120
      inteiro inimigo_hp_max = 120
      desemhar_cena(
          meu_nome,
          meu_hp,
          meu_hp_max,
          inimigo_nome,
          inimigo_hp,
          inimigo_hp_max, " Um " + inimigo_nome + " selvagem apareceu!"
      )
      
      inteiro dano = u.sorteia(22,35)
      inimigo_hp = inimigo_hp - dano
        // - = subtração
        // + = adição
        // / = divisão
        // % = resto da divisão
        // Entrada: joho aguarda o jogador confirmar antes deexecutar
        escreva("Pressione ENTER para atacar...")
        cadeia continuar
        leia(continuar)
        //operadores relacionai
        // > sinal maior que 
        // < sinal menor que
        // >= sinal de maior ou igual
        // <= sinal de menor ou igual
        // == sinal de igual
        // != sinal de diferente
        // todos os operadores relacionais retorar verdadeiro ou falso
        se(inimigo_hp < 0) {
          inimigo_hp = 0
        }
        //saída com o resultado do danpocausado ao pokemon inimigo
        escreva(">> ", meu_nome , " causou ", dano, " de dano \n")
        escreva(">> ", inimigo_nome, ": ", inimigo_hp, "/", inimigo_hp_max, "\n")

        escreva("Janela grafica Aberta! Tela criada com biblioteca de graficos!\n")        
        desemhar_cena(
          meu_nome,
          meu_hp,
          meu_hp_max,
          inimigo_nome,
          inimigo_hp,
          inimigo_hp_max, meu_nome + " causou " + dano + " de dano! "
        )
      
      
        //Operadores aritimético 
        //soma = operador utilizado para somar 2 ou mais numeros
        //subtraçao = operador utilizado para subtrair 2 ou mais numeros
        //multiplicação = operador utilizado para multiplica 2 ou mais numeros
        //divisao = operador para dividir 2 ou mais da divisao
        //os parenteses () vem primeiro que a divisao, depois a divisao vem a multiplicação, depois vem a soma e por fim a subtração
        //saida  com o resultado do dano causado ao pokemon inimigo
        
        // Tipos de variaveis:
        // cadeia = "dsahfsgfhgfgfahggfhasfghhafajef"
        // inteiro = 1, 10, 100, 1000,10000
        // real = 546.20, 1-.50, 50.99
        // caractere = 'M'
        // logico = verdadeiro, falso
        // Vazio = Tipos de dados para processar fuções sem retorno de valor: exemplo, funão escreva



        escreva("janela gráfica aberta! Utilizando a biblioteca de gráficos do portugol")
        //Essa função aguarda 5 segundos para encerrar o programa
        u.aguarde(5000)
  
  }
  funcao vazio desemhar_cena(
    cadeia p_nome_pokemon,
    inteiro p_hp_pokemon,
    inteiro p_max_hp_pokemon,
    cadeia i_pokemon,
    inteiro i_hp_pokemon,
    inteiro i_max_hp_pokemon,
    cadeia mensagem
    
    ) {
        //funções da bibliotecla de gráfico para montar a tela do jogo
        g.iniciar_modo_grafico(verdadeiro)
        g.definir_dimensoes_janela(LARGURA, ALTURA)
        g.definir_titulo_janela("Batalha-Pokemon-RPG")
        // desenho do céu do cenario
        g.definir_cor(g.criar_cor(150, 216, 250))
        g.desenhar_retangulo(0, 0, 800, 260, falso, verdadeiro)
           // desenho da grama do cenario
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
        //textos dos pokemons na tela do jogo
        g.definir_cor(g.criar_cor(250, 250, 235))
        g.desenhar_retangulo(50, 40, 300, 75, falso,verdadeiro)
        g.definir_cor(g.COR_PRETO)
        g.desenhar_retangulo(50, 40, 300, 75, falso,falso)
        g.desenhar_texto(60, 55, i_pokemon + " HP: " + i_hp_pokemon + "/" + i_max_hp_pokemon)
        g.definir_cor(g.criar_cor(250, 250, 235))
        g.desenhar_retangulo(450, 310, 300, 75, falso,verdadeiro)
        g.definir_cor(g.COR_PRETO)
        g.desenhar_retangulo(450, 310, 300, 75, falso,falso)
        g.desenhar_texto(480, 372, p_nome_pokemon + " HP: " + p_hp_pokemon + "/" + p_max_hp_pokemon)
        // campo onde ficará as mensagens na tela do jogo
        g.definir_cor(g.criar_cor(250,250, 235))
        g.desenhar_retangulo(20, 420, 760, 65, falso, verdadeiro)
        g.definir_cor(g.COR_PRETO)
        g.desenhar_retangulo(20, 420, 760, 65, falso,falso)
        g.desenhar_texto(40, 445, mensagem)
         g.renderizar()


  }
}