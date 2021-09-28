# Bard's Adventure

Desenvolvimento de um jogo para o TCC de Engenharia de Software

## Tabela de conteúdos
<!--ts-->
   * [Sobre](#sobre-o-jogo)
   * [Mecânicas](#mecânicas-de-jogo)
      * [Combate](#combate)
      * [Instrumentos](#instrumentos)
      * [Itens](#itens)
      * [NPCs](#npcs)
      * [Cenário](#cenário)
   * [Versões](#versões)
   * [TaskList](#tasklist)
<!--te-->

## Sobre o jogo

**Bard's Adventure** é a história de um bardo que vem de uma família muito famosa e prestigiada do continente. Ao nascer, todos que possuem poderes mágicos são destinados a uma arma, no caso dos bardos, instrumentos. Porém o protagonista é destinado a um simples apito, o que deixa sua família furiosa e com vergonha, o exilando em um vilagero pacato e pouco conhecido para que ele não tenha vínculos com a família. Agora já crescido e com poucas habilidades mágicas, o protagonista irá atrás de conhecer e se especializar em todos os instrumentos existentes enquanto se depara com inúmeros desafios e tenta catalogar espécies desconhecidas de inimigos.

## Mecânicas de Jogo
  **Combate**  
        Em Bard's Adventure, o estilo de combate será a partir de instrumentos. O Apito consiste em ataques de longa distância com projétes, já a Bateria, através das baquetas, o personagem consegue desferir ataques corpo a corpo. Os desafios constam de monstros simples como Slimes e Morcegos até entidades mais monstruosas (que ainda serão implementadas) com diferentes estilos de combate e interação. É planejado que alguns monstros sejam mais amigáveis que outras, da mesma forma que alguns sejam extremamente agressivos a ponto de dificultar um pouco a vida do personagem.
  Instrumentos
    A ideia é que o jogo tenha o máximo de instrumentos possíveis com suas variações e cada um desempenhe um papel diferente na gameplay. Também terá uma barra de progressão de instrumento para cada um que, através de missões muito específicas com mestres músicos, irá aperfeiçoar os ataques e desbloquear habilidades especiais.
  Itens
    Os itens são consumíveis ou itens de quest, os consumíveis podem ser utilizados para criar algo novo com NPCs específicos, fortificar algo já existente ou até mesmo para simplesmente vender. Já os itens de quest são primordiais para que se possa seguir no jogo, pois sem eles alguns puzzles podem nunca ser resolvidos. Os itens consumíveis são dropados a partir de monstros, quebrando partes do cenário ou até mesmo simplesmente caídos no chão, os itens de quest ficam em posições específicas esperando serem descobertos.
  NPCs
    O jogo possui NPCs com rotinas específicas para cada um, fazendeiros, pescadores, ferreiros, cozinheiros, mestres músicos etc. Cada NPC desempenha uma função única que o personagem pode explorar como, por exemplo, levar itens consumíveis de comida para o cozinheiro e conseguir um item mais forte que o comum, ou levar um tempeiro e potencializar o item que já tinha.
  #### Cenário
    Diversos cenários com diferentes decorações e ambientações é o que está presente em Bard's Adventure, cada local possui drops, NPCs e monstros únicos e, claro, muitos novos desafios e enigmas.

## Versões
  <dl>
    <dt> Bard's Adventure v0.3.3 </dt>
      <dd href="#tasks"> <b> Em Progresso </b> </dd>
    <dt> Bard's Adventure v0.3.2 </dt>
      <dd> Adição de Drops para os monstros <b>Slime</b> e <b>Morcego</b> <br> Implementando inventário </dd>
    <dt> Bard's Adventure v0.3.1 </dt>
      <dd> Adição de um Menu para quando o jogo estiver Pausado <br> Adição de uma página inicial de título com a opção de iniciar ou continuar o jogo </dd>
    <dt> Bard's Adventure v0.3 </dt>
      <dd> Implementando Save/Load </dd>
    <dt> Bard's Adventure v0.2.4 </dt>
      <dd> Adição de nova arma principal (Apito) <br> Combate a distância <br> Limitando combate corpo a corpo (Bateria) somente quando a mesma for desbloqueada <br> Adição de um novo inimigo (Morcego) </dd>
    <dt> Bard's Adventure v0.2.3 </dt>
      <dd> Implementando missões <br> Chance de dropar itens ao destruir partes do cenário <br> Adição da vida e moedas do personagem na tela <br> Adição de um seletor de armas utilizáveis </dd>
    <dt> Bard's Adventure v0.2.2 </dt>
      <dd> Implementando Máquina de Estado aos inimigos <br> Implementando vida ao personagem e aos inimigos <br> Possibilidade de dar dano e eliminar inimigos <br>        Possibilidade do jogador tomar dano e ser eliminado </dd>
    <dt> Bard's Adventure v0.2.1 </dt>
      <dd> Implementando transições de sala <br> Adicionando inimigos (Slime) </dd>
    <dt> Bard's Adventure v0.2 </dt>
      <dd> Implementando combate <br> Ataques corpo a corpo (Bateria) <br> Possibilidade de destruir algumas partes do cenário </dd>
    <dt> Bard's Adventure v0.1.3 </dt>
      <dd> Implementando NPCs <br> Implementando diálogos </dd>
    <dt> Bard's Adventure v0.1.2 </dt>
      <dd> Implementando câmera <br> Implementando Máquinas de Estado para o personagem <br> Implementando Pause </dd>
    <dt> Bard's Adventure v0.1.1 </dt>
      <dd> Implementando animações para movimentação <br> Implementando colisões </dd>
    <dt> Bard's Adventure v0.1 </dt>
      <dd> Imeplentando movimentações básicas </dd>
    <dt> Bard's Adventure v0.0 </dt>
      <dd> Tirando o projeto do papel </dd>
  </dl>
  
<h2> Tasklist </h2>
  <h4 title="#Tasks">Bard's Adventure v0.3.3</h4>
  - [x] Melhoria no sistema de Chase (Slime) <br>
  - [ ] Melhoria no sistema de Chase (Bat)<br>
  - [ ] Melhoria no sistema de Ataque (Bat)<br>
  - [ ] Melhoria nos sprites (Slime)<br>
  - [ ] Novo instrumento (Guitarra)<br>
  - [ ] Ataques normais (Guitarra)<br>
  - [ ] Ataque especial (Guitarra)<br>
           
