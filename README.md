# Bard's Adventure

Desenvolvimento de um jogo para o TCC de Engenharia de Software  
**ENCERRADO COMO VERSÃO DEMO.**
**[DESENVOLVIMENTO CONTINUADO EM GODOT](https://github.com/delimamatheus/BardsAdventureGodot)**

## Tabela de conteúdos
<!--ts-->
   * [Sobre](#sobre-o-jogo)
   * [Mecânicas](#mecânicas-de-jogo)
      * [Combate](#combate)
      * [Instrumentos](#instrumentos)
      * [Itens](#itens)
      * [NPCs](#npcs)
      * [Cenário](#cenário)
   * [Tecnologias](#tecnologias) 
   * [Versões](#versões)
   * [TaskList](#tasklist)
<!--te-->

## Sobre o jogo

**Bard's Adventure** é a história de um bardo que vem de uma família muito famosa e prestigiada do continente. Ao nascer, todos que possuem poderes mágicos são destinados a uma arma, no caso dos bardos, instrumentos. Porém o protagonista é destinado a um simples apito, o que deixa sua família furiosa e com vergonha, o exilando em um vilagero pacato e pouco conhecido para que ele não tenha vínculos com a família. Agora já crescido e com poucas habilidades mágicas, o protagonista irá atrás de conhecer e se especializar em todos os instrumentos existentes enquanto se depara com inúmeros desafios e tenta catalogar espécies desconhecidas de inimigos.

## Mecânicas de Jogo
  #### Combate
  Em Bard's Adventure, o estilo de combate será a partir de instrumentos. O Apito consiste em ataques de longa distância com projétes, já a Bateria, através das baquetas, o personagem consegue desferir ataques corpo a corpo. Os desafios constam de monstros simples como Slimes e Morcegos até entidades mais monstruosas (que ainda serão implementadas) com diferentes estilos de combate e interação. É planejado que alguns monstros sejam mais amigáveis que outras, da mesma forma que alguns sejam extremamente agressivos a ponto de dificultar um pouco a vida do personagem.  
  #### Instrumentos
  A ideia é que o jogo tenha o máximo de instrumentos possíveis com suas variações e cada um desempenhe um papel diferente na gameplay. Também terá uma barra de progressão de instrumento para cada um que, através de missões muito específicas com mestres músicos, irá aperfeiçoar os ataques e desbloquear habilidades especiais.  
  #### Itens
  Os itens são consumíveis ou itens de quest, os consumíveis podem ser utilizados para criar algo novo com NPCs específicos, fortificar algo já existente ou até mesmo para simplesmente vender. Já os itens de quest são primordiais para que se possa seguir no jogo, pois sem eles alguns puzzles podem nunca ser resolvidos. Os itens consumíveis são dropados a partir de monstros, quebrando partes do cenário ou até mesmo simplesmente caídos no chão, os itens de quest ficam em posições específicas esperando serem descobertos.  
  #### NPCs
  O jogo possui NPCs com rotinas específicas para cada um, fazendeiros, pescadores, ferreiros, cozinheiros, mestres músicos etc. Cada NPC desempenha uma função única que o personagem pode explorar como, por exemplo, levar itens consumíveis de comida para o cozinheiro e conseguir um item mais forte que o comum, ou levar um tempeiro e potencializar o item que já tinha.  
  #### Cenário
  Diversos cenários com diferentes decorações e ambientações é o que está presente em Bard's Adventure, cada local possui drops, NPCs e monstros únicos e, claro, muitos novos desafios e enigmas.  

## Tecnologias

## Versões
* Bard's Adventure v0.3.4
     *  [Em Progresso](#tasklist)
* Bard's Adventure v0.3.3
     * Melhoria no sistema de Chase (Slime)
     * Melhoria no sistema de Chase (Morcego)
     * Melhoria nos sprites (Slime
     * Novo instrumento (Guitarra)
     * Ataque normal (Guitarra)
     * Ataque Especial (Guitarra)
     * Ataque Especial (Apitor)
* Bard's Adventure v0.3.2
     * Adição de Drops para os monstros **Slime** e **Morcego**
     * Adição de inventário
* Bard's Adventure v0.3.1
     * Adição de um Menu para quando o jogo estiver Pausado
     * Adição de uma página inicial de título com a opção de iniciar ou continuar o jogo
* Bard's Adventure v0.3
     * Implementação de Save/Load
* Bard's Adventure v0.2.4
     * Adição de arma principal (Apito)
     * Combate a distância
     * Mudança de arma para desbloqueável (Bateria)
     * Adição de inimigo (Morcego)
* Bard's Adventure v0.2.3
     * Adição de Missão
     * Chance de dropar itens ao destruir partes do cenário
     * Adição da vida e moedas do personagem na tela
     * Adição de um seletor de armas utilizáveis
* Bard's Adventure v0.2.2
     * Implementação de Máquina de Estado aos inimigos
     * Adição de vida ao personagem e aos inimigos
     * Possibilidade de dar dano e eliminar inimigos
     * Possibilidade do jogador levar dano e ser eliminado
* Bard's Adventure v0.2.1
     * Implementação de transições de sala
     * Adição de inimigo (Slime)
* Bard's Adventure v0.2
     * Implementação do combate
     * Ataques corpo a corpo (Bateria)
     * Possibilidade de destruir algumas partes do cenário
* Bard's Adventure v0.1.3
     * Implementação de NPC (Ferreiro)
     * Implementação de diálogos básicos
* Bard's Adventure v0.1.2
     * Implementação da câmera
     * Implementação de Máquinas de Estado para o personagem
     * Implementação de Pause
* Bard's Adventure v0.1.1
     * Implementação animações para movimentação
     * Adição de colisões
* Bard's Adventure v0.1
     * Implementação de movimentações básicas
* Bard's Adventure v0.0
     * Tirando o projeto do papel
  
## Tasklist
  ### Bard's Adventure v0.3.4
  - [x] Animação Ataque Especial (Guitarra)
  - [x] HitBox Ataque Especial (Guitarra)
  - [x] Correção de bugs no Inventário
  - [ ] Correção de bugs no Ataque Especial (Apito)
  - [ ] Novo cenário (Floresta)
  - [ ] Novo monstro (xx)
  - [ ] Novo puzzle para adquirir instrumento (Bateria)
  - [ ] Novo puzzle para adquirir instrumento (Guitarra)
  - [ ] Novo NPC (Cozinheiro)
  - [ ] Sistema de Loja
  - [ ] Início da implementação do Livro de Anotações
  - [ ] Melhoria nos sprites (Ferreiro)
  - [ ] Melhoria no sistema de diálogos
  - [ ] Nova missão (Eliminar Morcegos)
  - [ ] Nova missão (Coletar Maçãs)
  - [ ] Correção de pequenos bugs e falhas nos sprites (Protagonista)
           
## Autor
