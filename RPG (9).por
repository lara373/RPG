programa {
   inclua biblioteca Util --> u
  funcao inicio() {
    cadeia inventario[5]={"#","#","#","#","#","#","#"}
    inteiro quantidade[5]={0,0,0,0,0,0,0}
    cadeia nome, item
    inteiro escolhaCalabouco, escolhaDoisCalabouco, dica, escolhafinal
    logico achou=falso
    logico tochaAcesa = falso

    escreva("---Bem vindo à Furtum Regium---\n")
    u.aguarde(800)
    escreva("Qual será o nome do seu personagem? ")
    leia(nome)
    u.aguarde(600)
    escreva("Narrador: No século X, em plena Era Medieval, quando reis e rainhas governam com punho de ferro, um herói improvável se ergue em meio à injustiça. Na pequena vila de ",nome, ", a esperança era uma chama quase extinta. O reino estava sob o domínio de um rei arrogante e implacável, que virava as costas para o sofrimento de seu povo. Mas entre os humildes camponeses, dois corações ardiam em fúria e coragem: ", nome, " e seu leal companheiro, Tomás. Movidos por vingança e pelo desejo de libertar seu povo da tirania, os dois tramaram um plano ousado — roubar a coroa do rei, símbolo de seu poder absoluto. Em uma noite sem luar, armados com suprimentos e determinação, " ,nome, " e Tomás infiltraram-se nas sombras do castelo real. Contudo, o destino não favorece os impetuosos... Capturados pelos guardas do rei, foram lançados nas profundezas do calabouço. Agora, trancafiados nas profundesas do castelo, seu novo objetivo é claro: escapar. Sobreviver. E completar a missão.\n")
    u.aguarde(65000)
    escreva("----------------------------------------------------------------------------\n")
    escreva("->Como jogar: Complete puzzles e faça escolhas para achar a chave que abre a porta do castelo, quando achar a chave, a porta se abre e você escapa com sucesso.")
    escreva("----------------------------------------------------------------------------\n")
    u.aguarde(8000)
    escreva("Sua aventura vai começar!\n")
    u.aguarde(3000)
    limpa()
     enquanto (verdadeiro) {
    escreva("-> Há um espelho na parede à sua direita do calabouço, uma estátua segurando uma tocha apagada no centro da sala, e um baú na esquerda da sala. No espelho há um círculo.\n")
    u.aguarde(9000)
    escreva("-Digite 1 para ir para a esquerda da sala, 2 para o centro e 3 para a direita. ")
    leia(escolhaCalabouco)
      se (escolhaCalabouco == 1) {
        escreva(nome, " foi para a esquerda da sala e encontrou um baú.\n")
        u.aguarde(5000)
        escreva("Dentro do baú havia uma caixa de fósforos.\n")
        inventario[0] = "fósforo"
        quantidade[0] = 1
        escreva("A caixa de fósforos foi adicionada ao inventário.\n")
      }
      senao se (escolhaCalabouco == 2) {
                escreva(nome, " andou até o centro da sala e encontrou uma estátua segurando uma tocha apagada.\n")

                escreva("|\t")
                para (inteiro i = 0; i < 5; i++) {
                    escreva(inventario[i], " ", quantidade[i], "\t|\t")
                }

                escreva("\nQual item deseja usar? Digite 0 se você não possui itens no inventário. ")
                leia(item)
                achou = falso

                para (inteiro i = 0; i < 5; i++) {
                    se (item == inventario[i]) {
                        escreva("Item encontrado no inventário.\n")
                        u.aguarde(2500)
                        limpa()
                        achou = verdadeiro
                    }
                }

                se (nao achou) {
                    escreva("Você não possui itens no inventário. Continue explorando a sala.\n")
                
                }
                 senao {
                    // Verifica se o jogador usou o fósforo
                    se (item == "fósforo" e nao tochaAcesa) {
                        escreva("Você risca o fósforo e acende a tocha na mão da estátua.\n")
                        u.aguarde(5000)
                        escreva("A luz da tocha reflete no espelho à direita da sala...\n")
                        u.aguarde(5000)
                        escreva("Um som de engrenagem é ouvido... o espelho se move revelando uma porta secreta!\n")
                        u.aguarde(5000)
                        escreva("Você completou o primeiro puzzle com sucesso!\n")
                        u.aguarde(3500)
                        tochaAcesa = verdadeiro
                        pare
                    }

                  

                    senao se (item == "fósforo" e tochaAcesa) {
                        escreva("A tocha já está acesa e o espelho já foi revelado.\n")
                    }
                    senao {
                        escreva("Esse item não surtiu efeito aqui.\n")
                    }
                }
            }
              
           // Ir à direita — espelho
            senao se (escolhaCalabouco == 3) {
                escreva(nome, " foi até o espelho e viu um círculo esculpido no vidro.\n")
                se (tochaAcesa) {
                    escreva("A porta secreta no espelho está aberta.\n")
                }
            }
            

            senao {
                escreva("Opção inválida. Tente novamente.\n")
            }

            u.aguarde(2000)
        }
    u.aguarde(5000)
    limpa()
    escreva("Narrador: Vocês conseguiram sair do calabouço. Agora, vocês encontram uma escadaria, vocês sobem as escadas e se deparam com um corredor, onde tem cinco guardas guardando-o.\n")
    u.aguarde(10000)
    escreva(nome,": Lascou! Como que a gente sai dessa agora?\n")
    u.aguarde(1000)
    escreva("->Digite 4 para chamar um elemento surpresa do jogo que o dará uma dica: ")
    leia(dica)
    escreva("Narrador: Tomás chama Jade (uma cobra mágica falante, amiga de Tomás e ",nome,") para ajudar a passar pelos guardas. A cobra dá 3 opções de itens que podem ajudá-los: Digite 1 para usar uma poção do sono com a duração de um minuto, digite 2 para usar uma poção de invisibilidade com a duração de 15 segundos, e 3 para usar uma espada. ")
    leia(escolhaDoisCalabouco)

    se (escolhaDoisCalabouco == 1) {
        escreva("Narrador: Vocês jogam a poção do sono nos guardas. Um a um, eles caem no chão roncando profundamente.\n")
        u.aguarde(5000)
        escreva(nome, ": Rápido, antes que eles acordem!\n")
        u.aguarde(2000)
        escreva("Vocês correm silenciosamente pelo corredor e conseguem escapar com sucesso.\n")
        u.aguarde(3000)
        escreva("Narrador: Vocês conseguiram passar pelo corredor. Ao final dele, ",nome," e Tomás encontram um baú, no qual havia uma chave dourada dentro.\n")
        u.aguarde(10000)
        inventario[1] = "chave"
        quantidade[1] = 1
        escreva("A chave está agora no inventário.")
        u.aguarde(5000)
        limpa()
        escreva("Narrador: Tomás e ",nome, " saem do corredor e andam até a sala principal do castelo, onde se encontra aporta de saída, que está trancada.\n")
        u.aguarde(8000)
        escreva("Voz de longe: ELES ESTÃO LÁ!! PEGUEM ELES!!\n")
        u.aguarde(3000)
        escreva("Tomás: Tem guardas vindo!\n")
        u.aguarde(2000)
        escreva(nome,": Vamos ter que lutar, Tomás!\n")
        u.aguarde(2000)
        escreva("Tomás: Eu distraio eles enquanto você pega a coroa que vai estar desprotegida ja que os guardas estão aqui, vai rápido!\n")
        u.aguarde(8000)
        escreva(nome,": Ta bom! Mas não morre, eu ja volto pra te ajudar!\n")
        u.aguarde(4000)
        escreva("Narrador: Tomás luta contra os guardas, enquanto ",nome," vai roubar a coroa.\n")
        u.aguarde(4000)
        escreva("Narrador: ",nome," consegue pegar a coroa. Quando está voltando se depara com o Tomás sangrando no chão, " ,nome, " vai até ele com lágrimas, e ",nome," tem uma escolha difícil a fazer: você deseja tentar salvar seu amigo mesmo que todos os guardas estejam ali prontos para te atacar, ou prefere fugir com a coroa e deixar Tomás para tras? Digite 1 para tentar salva-lo e 2 para fugir: \n")
        leia(escolhafinal)
        escolha (escolhafinal){
          caso 1: 
          escreva("Narrador: ",nome," vai bravamente salvar seu fiel amigo Tomás, porém os guardas são muitos e ",nome," infelizmente perde a batalha.\n")
          u.aguarde(6000)
          escreva("Derrota para os dois heróis, o coração falou mais alto, talvez fosse melhor deixar seu amigo para trás...")
          pare
          caso 2: 
          escreva("Narrador: ",nome," é realista e percebe que não tem como vencer uma batalha contra todos os guardas do castelo, entao você foge com a coroa deixando Tomás para tras. Seu coração chora de dor, porém você sabe que é necessario, caso contrario tudo que vocês passaram seria em vão. Você pega a chave dourada que tinha achado no final do corredor mais cedo, e abre a porta do castelo.\n")
          u.aguarde(8000)
          escreva("Jogo finalizado. O gosto da doce vitória... (ou não).")
        }
    }
    senao se (escolhaDoisCalabouco == 2) {
        escreva("Narrador: Vocês tomam a poção de invisibilidade e começam a atravessar o corredor despercebidos...\n")
        u.aguarde(2000)
        escreva("Porém, os 15 segundos passam rápido demais.\n")
        u.aguarde(1500)
        escreva("A invisibilidade acaba no meio do caminho e os guardas percebem vocês.\n")
        u.aguarde(2000)
        escreva("Vocês são cercados e capturados novamente.\n")
        escreva("GAME OVER — Fim trágico para os heróis.\n")
    }
    senao se (escolhaDoisCalabouco == 3) {
        escreva("Narrador: Com bravura, vocês sacam a espada e enfrentam os guardas do rei.\n")
        u.aguarde(2000)
        escreva("Apesar da coragem, são cinco contra dois. A luta é intensa, mas vocês são subjugados.\n")
        u.aguarde(2000)
        escreva("Vocês são novamente lançados no calabouço, ainda mais vigiados que antes.\n")
        escreva("GAME OVER — A coragem foi grande, mas a força não foi suficiente.\n")
    }
    senao {
        escreva("Opção inválida. O tempo acabou e os guardas perceberam vocês.\n")
        escreva("GAME OVER — Decisões erradas têm consequências.\n")
    }

    }
}
