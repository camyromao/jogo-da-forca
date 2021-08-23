# Jogo da forca (Hangman)

O desafio do jogo da velha consiste em adivinhar uma palavra, letra por letra, até ter toda a palavra revelada.

No começo do jogo, a pessoa vai receber a palavra apenas com underscore. Digamos que a palavra seja 'bolacha'. Ela vai aparecer assim _ _ _ _ _ _ _

Ao acertar a letra *b* teremos b _ _ _ _ _ _

## Extensões

O jogo deve ter duas formas de ser jogado: via terminal (CLI - command line application) e Web.

Você pode escolher QUALQUER tecnologia para fazer isso. Qualquer linguagem, qualquer banco de dados, qualquer paradigma. O objetivo do projeto é nos desafiar e aplicar o que aprendemos com os katas até então.

Não terá prêmio de melhor projeto, nem existirá um projeto mais certo ou mais errado que o outro.

### Terminal

No jogo via terminal, a pessoa iniciará o jogo, verá a palavra não revelada a todo instante. Poderá fazer suas suposições de letra e receber mensagens específicas quando repete uma letra, quando erra, quando perde o jogo e quando ganha.

### Browser

No jogo via browser, os detalhes gráficos ficam por sua conta, mas é vital que a pessoa consiga visualizar a palavra não revelada e tenha interações que possibilitem saber o que está acontecendo.

## Regras

* A palavra buscada pode vir de um arquivo texto;
* A pessoa vai ter um número máximo de tentativas antes de perder;
* Letras repetidas não devem contar como erro;
* O programa deve ignorar se a letra é maiúscula ou minúscula (case insensitive);
* O número máximo de erros pode ser dinâmico (relativo ao tamanho da palavra) ou fixo.