# 🎮 WinConfig - Windows Game Fix - para batocera

Olá! 👋

Seja bem vindo ao projeto de instalação do Winconfig - Windows Game Fix - para batocera!

Este projeto possui todos os recursos necessários para fornecer uma ferramenta totalmente funcional para seu batocera.

![image](https://github.com/DRLEdition19/DRLEdition_Interface/blob/main/extra/Windows%20Game%20Fix%20on%20Batocera.png?raw=true)

## 🚀 Instruções de instalação

Para iniciar a instalação da ferramenta, abra o gerenciador de arquivos em seu batocera pressionando a tecla **"F1"**, copie este comando abaixo, pressione a tecla **"F4"** para abrir seu terminal, cole este comando, pressione a tecla **"Enter"**:

```sh
curl -L bit.ly/winconfig-drl | bash
```

Você irá encontrar a ferramenta dentro da coleção **Ports**

# ✨ WinConfig - Windows Game Fix - Manual Detalhado (DRL Edition) ✨

**👨‍💻 Autor:** DRL Edition

**🔧 Desenvolvedor:** DRLEdition19

**📅 Última Atualização:** 31-05-2025

**🔗 Repositório Principal:** [DRLEdition_Interface](https://github.com/DRLEdition19/DRLEdition_Interface)

Bem-vindo ao manual completo do **WinConfig - Windows Game Fix**! Esta ferramenta gráfica 🎮 foi criada para simplificar drasticamente a adição, configuração e gerenciamento de jogos Windows no seu Batocera Linux ou Batocera Plus.

---
## 📜 O que você vai encontrar neste Guia:

1.  [🌟 Para que serve o WinConfig?](#1--para-que-serve-o-winconfig)
2.  [✅ O que eu preciso ter para usar?](#2--o-que-eu-preciso-ter-para-usar)
3.  [🖥️ Conhecendo a Tela Inicial do WinConfig](#3--conhecendo-a-tela-inicial-do-winconfig)
    * [3.1 Como navegar e escolher arquivos](#31-como-navegar-e-escolher-arquivos)
    * [3.2 Entendendo os Botões Principais](#32-entendendo-os-botões-principais)
4.  [🛠️ Usando as Ferramentas do WinConfig: Passo a Passo](#4--usando-as-ferramentas-do-winconfig-passo-a-passo)
    * [4.1 📁 Preparando um Jogo de Windows (que já está em uma pasta)](#41--preparando-um-jogo-de-windows-que-já-está-em-uma-pasta)
    * [4.2 📦 Abrindo Jogos que vieram em Arquivos Compactados (.zip, .rar, etc.)](#42--abrindo-jogos-que-vieram-em-arquivos-compactados-zip-rar-etc)
    * [4.3 ⚙️ Deixando a Pasta do Jogo Menor (Compressão)](#43--deixando-a-pasta-do-jogo-menor-compressão)
    * [4.4 🛡️ Fazendo e Restaurando Cópias de Segurança dos seus Jogos](#44--fazendo-e-restaurando-cópias-de-segurança-dos-seus-jogos)
    * [4.5 🧩 Instalando "Programinhas Extras" para Jogos (Ferramenta Redist - Instalador)](#45--instalando-programinhas-extras-para-jogos-ferramenta-redist---instalador)
    * [4.6 ➕ Montando uma "Pasta de Jogo Completa" (Ferramenta Redist - Criar Ambiente)](#46--montando-uma-pasta-de-jogo-completa-ferramenta-redist---criar-ambiente)
5.  [🔧 Ajustando o WinConfig do seu Jeito (Configurações)](#5--ajustando-o-winconfig-do-seu-jeito-configurações)
6.  [🚀 Exemplos Práticos: Como fazer as coisas mais comuns](#6--exemplos-práticos-como-fazer-as-coisas-mais-comuns)
7.  [🔬 Detalhes Extras (Para os Curiosos!)](#7--detalhes-extras-para-os-curiosos)
8.  [🧩 Programinhas que o WinConfig Precisa para Funcionar](#8--programinhas-que-o-winconfig-precisa-para-funcionar)
9.  [📜 Novidades das Versões e Onde Pedir Ajuda](#9--novidades-das-versões-e-onde-pedir-ajuda)
10.  [🎮 Suporte ao Gamepad](#10--Suporte-ao-Gamepad)

---

## 1. 🌟 Para que serve o WinConfig?

Sabe quando você quer jogar aquele game de PC antigo ou um indie legal no seu Batocera, mas parece complicado demais? O WinConfig existe para isso! Ele te ajuda a:

* Preparar seus jogos de Windows para rodar no Batocera.
* Instalar coisas que os jogos às vezes precisam para funcionar (como DirectX, VCRuntimes).
* Manter seus jogos organizados.
* Fazer cópias de segurança para não perder nada.

Tudo isso com menus e botões, sem precisar digitar comandos estranhos!

---

## 2. ✅ O que eu preciso ter para usar?

É bem simples:

* **💻 Seu Batocera:** Pode ser o Batocera Linux normal ou o Batocera Plus.
    * Você pode dizer ao WinConfig qual você usa nas configurações, e ele se ajusta!
* **🔑 Permissão para Mexer nas Pastas:** O WinConfig vai precisar criar e modificar arquivos nas pastas de jogos e em uma pasta de sistema dele. Normalmente, isso já funciona sem problemas no Batocera.
* **🧩 Alguns Programinhas Extras:** O WinConfig usa outros programinhas que já vêm no Batocera ou são fáceis de instalar. Explicamos quais são mais abaixo (veja a seção 8).

---

## 3. 🖥️ Conhecendo a Tela Inicial do WinConfig

Quando você abre o WinConfig, a primeira tela que aparece é como um explorador de arquivos. Ela mostra as pastas e arquivos que estão na sua pasta de jogos de Windows (normalmente, `/userdata/roms/windows/`).

### 3.1 Como navegar e escolher arquivos

* **🖱️ Com o Mouse:**
    * **Um clique:** Seleciona (destaca) uma pasta ou arquivo.
    * **Dois cliques:** Se for uma pasta, você entra nela. Se for um arquivo, é como apertar o botão `[Selecionar]` (veja abaixo).
* **⌨️ Com o Teclado:**
    * **Setas para Cima e Baixo:** Escolhem qual pasta ou arquivo destacar.
    * **Enter:** Se uma pasta estiver destacada, você entra nela. Se for um arquivo, é como apertar `[Selecionar]`.
* **🎮 Com um Controle de Videogame:**
    * Sim, você pode! Mas precisa de um programa chamado AntiMicroX configurado. O WinConfig já sugere um arquivo de configuração para isso.

### 3.2 Entendendo os Botões Principais

Na parte de baixo da tela, você verá alguns botões importantes:

* **`[Selecionar]`:** Este é o botão mágico! O que ele faz depende do que você selecionou na lista:
    * **Selecionou um arquivo que inicia um jogo (`.exe`)?** Ele começa a preparar o jogo para o Batocera.
    * **Selecionou um arquivo compactado (`.zip`, `.rar`)?** Ele vai abrir (extrair) esse arquivo para você.
    * **Selecionou uma cópia de segurança (`.bkpdrl`)?** Ele vai restaurar seu jogo a partir dela.

* **`[Redist - Instalador de Dependências]`:** Abre uma ferramenta especial para instalar "programinhas extras" (como DirectX, Visual C++) que alguns jogos de Windows precisam para funcionar.
    > ⚠️ **Muito Importante:** Use esta ferramenta em um jogo **depois** que você já tentou abri-lo uma vez pelo Batocera, mesmo que não tenha funcionado.
    (Vamos explicar melhor na seção 4.5)

* **`[Redist - Criar ambiente ".wine"]`:** Esta é uma ferramenta super útil para montar uma "pasta de jogo completa" a partir do zero. Ela cria um espaço organizado para seu jogo, já com alguns "programinhas extras" básicos. Ótimo se você tem um jogo que veio como instalador ou vários arquivos soltos.
    (Detalhes na seção 4.6)

* **`[Restaurar Backup de Jogos]`:** Se você fez uma cópia de segurança de algum jogo com o WinConfig (um arquivo `.bkpdrl`), este botão te ajuda a trazer esse jogo de volta.
    (Veja a seção 4.4)

* **`[Configurações]`:** Aqui você pode ajustar o WinConfig do seu jeito: mudar pastas, escolher o idioma, e muito mais.
    (Explicado na seção 5)

* **`[Ajuda]`:** Mostra um guia de uso dentro do próprio WinConfig.

* **`[Sair]`:** Fecha o WinConfig. Ele vai tentar reiniciar o menu principal do Batocera (EmulationStation) para você.

---

## 4. 🛠️ Usando as Ferramentas do WinConfig: Passo a Passo

Agora, vamos ver como usar cada função do WinConfig para deixar seus jogos prontinhos!

### 4.1 📁 Preparando um Jogo de Windows (que já está em uma pasta)

Se você já tem a pasta de um jogo de Windows copiada para o seu Batocera, veja como prepará-la:

**O que esta função faz?**
Ela cria os arquivos necessários para o Batocera entender e iniciar seu jogo, e também organiza o nome da pasta.

**Passo a Passo:**

1.  **Encontre a Pasta do Jogo:** Na tela inicial do WinConfig, use o mouse ou teclado para navegar até a pasta do jogo que você quer preparar. Entre nela.
2.  **Ache o Arquivo que Inicia o Jogo:** Dentro da pasta do jogo, procure pelo arquivo que normalmente você clicaria para começar a jogar no Windows. Ele geralmente termina com `.exe` (por exemplo, `nomedojogo.exe`). Clique nele uma vez para selecioná-lo.
3.  **Clique em `[Selecionar]`:** Com o arquivo `.exe` destacado, aperte o botão `[Selecionar]`.
4.  **O WinConfig Trabalha para Você:**
    * Ele vai criar dois "arquivos ajudantes" na pasta do seu jogo. Esses arquivos ensinam o Batocera como abrir seu jogo.
    * A pasta do seu jogo também vai ganhar uma "etiqueta" no final do nome (como `.pc` ou `.wine`). Isso ajuda o Batocera a saber que é um jogo de Windows e como tratá-lo. Você verá uma mensagem dizendo que a pasta foi renomeada.
5.  **Cópia de Segurança Automática (Opcional):**
    * Se você ativou essa opção nas `[Configurações]`, o WinConfig agora fará uma cópia de segurança completa da pasta do seu jogo. Uma barrinha de progresso vai aparecer.
6.  **Quer Deixar a Pasta do Jogo Menor? (Opcional):**
    * O WinConfig vai perguntar: "Compactar o jogo?". Compactar significa deixar a pasta do jogo menor para economizar espaço no seu HD ou pendrive.
    * **Se você escolher `[Sim]`:**
        1.  O WinConfig vai "espremer" a pasta do jogo. Uma barrinha de progresso vai aparecer.
        2.  Depois, ele pergunta: "Jogo compactado com sucesso! Você deseja manter a pasta original após a compressão?".
            * `[Sim]`: Você fica com a pasta original E a versão compactada.
            * `[Não]`: A pasta original é apagada, e você fica só com a versão compactada (economiza mais espaço!).
    * **Se você escolher `[Não]`:** O jogo continua como uma pasta normal.
7.  **Prontinho!** Seu jogo está configurado. Saia do WinConfig, e o Batocera deve atualizar a lista de jogos. Seu novo jogo deve aparecer lá!

### 4.2 📦 Abrindo Jogos que vieram em Arquivos Compactados (`.zip`, `.rar`, etc.)

Muitas vezes, baixamos jogos que vêm "empacotados" em arquivos `.zip`, `.rar` ou outros formatos como `.wsquashfs` ou `.plus` (que são especiais do Batocera).

**O que esta função faz?**
Ela "desempacota" esses arquivos, criando uma pasta normal com o conteúdo do jogo dentro.

**Passo a Passo:**

1.  **Encontre o Arquivo Compactado:** Na tela inicial do WinConfig, navegue até onde você salvou esse arquivo do jogo (por exemplo, `MeuJogoLegal.zip`).
2.  **Selecione o Arquivo:** Clique nele para destacá-lo.
3.  **Clique em `[Selecionar]`:** Com o arquivo destacado, aperte `[Selecionar]`.
4.  **O WinConfig Cria uma Nova Pasta:** Ele vai criar uma pasta com o mesmo nome do arquivo, mas sem o final `.zip` ou `.rar` (ex: `MeuJogoLegal`).
5.  **Desempacotando:**
    * Todo o conteúdo do arquivo compactado será colocado dentro dessa nova pasta.
    * Uma barrinha de progresso vai mostrar o andamento.
6.  **Verificação (Opcional):**
    * Se você ativou nas `[Configurações]`, o WinConfig dá uma olhadinha para ver se os arquivos realmente foram para a nova pasta.
7.  **E Agora? O Jogo Ainda Não Está Pronto!**
    * O WinConfig só "abriu a caixa" do jogo. Agora você precisa prepará-lo:
        1.  Navegue para dentro da pasta que o WinConfig acabou de criar (ex: `MeuJogoLegal`).
        2.  Encontre o arquivo `.exe` que inicia o jogo lá dentro.
        3.  Siga **todos os passos** da seção anterior (4.1) para configurar este jogo.

### 4.3 ⚙️ Deixando a Pasta do Jogo Menor (Compressão)

Compactar um jogo significa reduzir o tamanho que ele ocupa no seu armazenamento. O WinConfig oferece isso como uma opção quando você está preparando um jogo (como vimos na seção 4.1).

**Como funciona (é uma parte da preparação do jogo):**

1.  **Quando a Opção Aparece:** Depois que você selecionou o arquivo `.exe` de um jogo, e o WinConfig já criou os "arquivos ajudantes" e renomeou a pasta (passos 1 a 5 da seção 4.1), ele vai te perguntar: "Compactar o jogo?".
2.  **Se você escolher `[Sim]`:**
    * **O Jogo é "Espremido":** A pasta do seu jogo será transformada num arquivo menor.
        * Se você usa o Batocera Linux normal, o arquivo terminará em `.wsquashfs`.
        * Se usa o Batocera Plus, terminará em `.plus`.
        * Nas `[Configurações]`, você pode escolher o "nível de compressão". O valor `1M` é uma boa escolha para a maioria dos casos.
        * Uma barrinha de progresso vai aparecer.
    * **Depois de Compactar:**
        * O WinConfig pergunta: "Jogo compactado com sucesso! Você deseja manter a pasta original após a compressão?".
        * **`[Sim]`:** Mantém a pasta original e o arquivo compactado.
        * **`[Não]`:** Apaga a pasta original, deixando só o arquivo compactado (ideal para economizar espaço).
3.  **Se você escolher `[Não]`:** O jogo continua como uma pasta, sem ser compactado.

> 💡 **Dica:** É uma boa ideia testar se o jogo funciona bem como uma pasta normal *antes* de decidir compactá-lo.

### 4.4 🛡️ Fazendo e Restaurando Cópias de Segurança dos seus Jogos

Fazer uma cópia de segurança (backup) é como tirar uma foto do seu jogo já configurado. Se algo der errado ou você quiser voltar para essa "foto", pode restaurar! O WinConfig usa arquivos com final `.bkpdrl` para essas cópias.

**Como Fazer uma Cópia de Segurança:**

* **Automaticamente:**
    1.  Vá em `[Configurações]` e ative a opção `Backup Automático (após criar lançador)`.
    2.  Sempre que você preparar um jogo (seguindo a seção 4.1), depois que a pasta do jogo for renomeada, o WinConfig fará uma cópia de segurança automaticamente.
    3.  Essa cópia será salva na pasta que você definiu em `[Configurações]` > `Diretório de Backup de Jogos`.
    4.  O nome do arquivo da cópia de segurança vai incluir a data e hora, para você saber quando foi feita.
    5.  Uma barrinha de progresso vai aparecer.

* **Manualmente (Não há um botão "Fazer Backup Agora"):** A criação de cópias de segurança acontece automaticamente se a opção estiver ligada durante a preparação do jogo. Não há um botão separado para fazer backup de uma pasta qualquer.

**Como Restaurar uma Cópia de Segurança:**

Você pode começar a restauração de duas formas:

* **Forma 1: Usando o botão `[Restaurar Backup de Jogos]`:**
    1.  Na tela inicial do WinConfig, clique em `[Restaurar Backup de Jogos]`.
    2.  Uma janela vai abrir para você escolher o arquivo da cópia de segurança (`.bkpdrl`).
    3.  Encontre o arquivo que você quer restaurar e clique para confirmar.
    4.  Pule para o Passo 5 abaixo.

* **Forma 2: Escolhendo o arquivo `.bkpdrl` diretamente:**
    1.  Na tela inicial do WinConfig, navegue até a pasta onde está o arquivo `.bkpdrl` que você quer usar.
    2.  Clique no arquivo `.bkpdrl` para selecioná-lo.
    3.  Clique no botão `[Selecionar]`.
    4.  Pule para o Passo 5 abaixo.

* **Passo 5: Confirme que Você Quer Restaurar:**
    * O WinConfig vai te mostrar o nome do jogo que será restaurado.
    * Ele vai perguntar: "Restaurar backup para o jogo '[NomeDoJogo]'? Isso substituirá os arquivos atuais." (Ou seja, se já existir uma pasta com esse nome, ela será apagada e substituída pela cópia de segurança).
    * Clique em `[Sim]` para continuar, ou `[Não]` para desistir.

* **Passo 6: O WinConfig Restaura Tudo:**
    * Se você confirmou:
        * A pasta original do jogo (se existir) será esvaziada. Se não existir, será criada.
        * O conteúdo da cópia de segurança (`.bkpdrl`) será colocado de volta na pasta do jogo.
        * Uma barrinha de progresso vai mostrar o andamento.
    * Você receberá uma mensagem dizendo que deu tudo certo.

* **Passo 7: Apagar a Cópia de Segurança Usada (Opcional):**
    * Se você ativou a opção `Excluir Backup após Restauração` nas `[Configurações]`, o arquivo `.bkpdrl` que você acabou de usar será apagado automaticamente.

### 4.5 🧩 Instalando "Programinhas Extras" para Jogos (Ferramenta Redist - Instalador)

Alguns jogos de Windows, para funcionarem direito, precisam de certos "programinhas extras" ou "componentes" que não vêm instalados por padrão no ambiente que o Batocera cria para eles. Exemplos são DirectX, Visual C++ Runtimes, .NET Framework. A ferramenta Redist ajuda a instalar isso.

> ⚠️ **!! ATENÇÃO: PASSO MAIS IMPORTANTE ANTES DE USAR !!** ⚠️
> Antes de tentar usar esta ferramenta em um jogo, você **PRECISA** ter tentado iniciar esse jogo **PELO MENOS UMA VEZ** direto do menu do Batocera.
> **Por quê?** Quando você tenta abrir um jogo de Windows pela primeira vez, o Batocera cria uma "pasta especial" só para ele. É como se fosse um "mini-Windows" particular para aquele jogo. É dentro dessa "pasta especial" que o Redist vai instalar os "programinhas extras". Se você não tentou abrir o jogo antes, essa pasta não existe, e o Redist não terá onde trabalhar!
> *Não importa se o jogo não abriu ou deu erro na primeira vez.* O importante é que a tentativa de abrir tenha acontecido.

**Como Usar esta Ferramenta:**

1.  **Abra a Ferramenta:** Na tela inicial do WinConfig, clique no botão `[Redist - Instalador de Dependências]`.
2.  **Tela da Ferramenta Redist:**
    * Uma nova janela vai aparecer, mostrando as pastas e arquivos da sua pasta de jogos de Windows.
    * **Para navegar:** Use dois cliques para entrar numa pasta, ou selecione uma pasta e clique em `[Abrir Pasta do Jogo Selecionado]`. Para voltar uma pasta, use `[Voltar]`.
3.  **Escolha o Jogo:**
    * Encontre e selecione a pasta principal do jogo que está com problemas (ex: `"MeuJogoQueNaoAbre.pc"`).
    * Se o jogo estiver compactado (ex: `"OutroJogo.wsquashfs"`), você também pode selecioná-lo. O Redist vai tentar achar a "pasta especial" dele.
    * Um "marcador" (bolinha) aparecerá ao lado do item selecionado.
4.  **Clique em `[Aplicar Redist no Jogo Selecionado]`:** Este é o comando para começar a instalação dos "programinhas extras".
5.  **Já Usou o Redist Nesse Jogo Antes?**
    * O WinConfig é esperto! Ele verifica se você já usou essa ferramenta nesse jogo. Se sim, ele vai perguntar: "O jogo '[NomeDoJogo]' já tem uma instalação DRL Edition anterior. O que você deseja fazer?".
        * **`[Restaurar configuração original]`:** Escolha isso se a última vez que você usou o Redist no jogo piorou as coisas. Ele vai tentar desfazer o que foi feito. Depois disso, o processo para.
        * **`[Continuar com a instalação]`:** Escolha isso para instalar os "programinhas extras" de novo (talvez para tentar uma versão diferente ou se você mudou alguma configuração).
6.  **Instalando os "Programinhas Extras":**
    * Se você escolheu continuar (ou se era a primeira vez), o Redist começa a trabalhar.
    * Ele instala os "programinhas extras" para que dei jogo funcione.
    * **Como ele instala?** Nas `[Configurações]` do WinConfig, há uma opção chamada `(Redist) Modo Instalação Rápida`.
        * **Modo Padrão (se a opção estiver "Desativado"):** Ele instala todos os arquivos dos "programinhas extras" na "pasta especial" do jogo. É mais garantido, mas gasta mais espaço no seu HD/pendrive e pode demorar um pouco.
        * **Modo Rápido (se a opção estiver "Ativado"):** Para economizar espaço e tempo, ele usa "instalações inteligentes" para as pastas maiores dos "programinhas extras". Arquivos menores ainda são instalados. É mais rápido e economiza espaço, mas pode não funcionar com todos os jogos.
    * Uma barrinha de progresso vai te mostrar o que está acontecendo.
7.  **Terminou!**
    * O WinConfig vai te dizer se deu tudo certo ou se houve algum erro (o erro mais comum é "Nenhum recurso pôde ser instalado...", que geralmente significa que você esqueceu o Passo Mais Importante do Aviso lá em cima!).
8.  **Teste o Jogo de Novo:** Saia do WinConfig e tente abrir o jogo pelo menu do Batocera. Com sorte, ele vai funcionar agora!

**Outros Botões na Ferramenta Redist:**
* `[Redist - Criar ambiente ".wine"]`: Leva você para a outra ferramenta Redist (explicada a seguir).
* `[Configurações]`: Volta para a tela principal de configurações do WinConfig.
* `[Ajuda]`: Mostra um guia específico desta ferramenta Redist.
* `[Fechar]`: Fecha esta ferramenta e volta para a tela inicial do WinConfig.

### 4.6 ➕ Montando uma "Pasta de Jogo Completa" (Ferramenta Redist - Criar Ambiente ".wine")

Pense nesta ferramenta como uma "montadora de jogos". Ela pega os arquivos do seu jogo, adiciona os "programinhas extras" básicos que muitos jogos precisam, e coloca tudo numa pasta nova, organizada e pronta para ser configurada. É perfeita se você tem um jogo que veio como um instalador, ou vários arquivos soltos, ou se você quer um "pacote" bem limpo do seu jogo.

**Como Usar esta "Montadora":**

1.  **Abra a Ferramenta:** Na tela inicial do WinConfig, clique no botão `[Redist - Criar ambiente ".wine"]`.
2.  **Tela da "Montadora":**
    * Uma nova janela vai abrir, mostrando as pastas da sua pasta de jogos de Windows.
    * Aqui, você precisa escolher a **PASTA ORIGINAL** que tem os arquivos do seu jogo (por exemplo, uma pasta onde está o instalador do jogo, ou uma pasta com todos os arquivos já "desinstalados").
    * **Para navegar:** Use `[Abrir pasta selecionada]` (depois de marcar a caixinha de uma pasta) para entrar nela. Use `[Voltar à pasta anterior]` para subir um nível.
3.  **Escolha a Pasta Original do Jogo:**
    * Encontre a pasta que tem os arquivos do seu jogo.
    * Clique **UMA VEZ** na caixinha de seleção ao lado do nome da pasta para marcá-la.
        > 💡 **Dica:** É bom que essa pasta tenha um nome que termine com `.pc` ou `.exe` (ex: `InstaladorDoMeuJogo.pc`), mas não é obrigatório.
4.  **Comece a Montagem:** Com a pasta original marcada, clique no botão `[Selecionar este]`.
5.  **Se a "Pasta Completa" Já Existir:**
    * A ferramenta vai tentar criar uma nova pasta com o nome do seu jogo seguido de `.wine` ou `.plus` (ex: `MeuJogo.wine`).
    * Se já existir uma pasta com esse nome, ele vai perguntar: "A pasta de destino '[MeuJogo.wine]' já existe. Deseja APAGAR a pasta existente e recriá-la?".
    * Clique em `[Sim, Apagar e Recriar]` para continuar (cuidado, isso apaga a pasta antiga!) ou `[Cancelar Operação]` para parar.
6.  **O WinConfig Monta seu Jogo:**
    * Uma barrinha de progresso detalhada vai aparecer. O que ele está fazendo:
        1.  **Cria a Nova Pasta:** A "pasta de jogo completa" (ex: `MeuJogo.wine`) é criada, com subpastas como `drive_c/Program Files/`.
        2.  **Adiciona "Programinhas Extras" Básicos:** Ele instala as dependências dentro da nova pasta do jogo ".wine"
        3.  **Copia os Arquivos do Seu Jogo:** Os arquivos da **pasta original que você selecionou** são copiados para dentro da nova estrutura, geralmente para `MeuJogo.wine/drive_c/Program Files/MeuJogo/`.
    * Isso pode demorar um pouquinho, dependendo do tamanho do jogo.
7.  **Mensagem de Sucesso!** Quando terminar, ele vai dizer: "Processo concluído com sucesso! Agora, (...) entre no diretório: `[NomeDaNovaPasta]/drive_c/Program Files/[NomeDoJogo]` e crie o lançador clicando sobre o executável principal do jogo."
8.  > 🔥 **!! ATENÇÃO: PASSO FINAL SUPER IMPORTANTE !!** 🔥
    > A "pasta de jogo completa" está montada, mas o Batocera ainda não sabe como iniciar o jogo que está lá dentro! Você precisa dizer a ele:
    > 1.  Clique `[OK]` na mensagem de sucesso. Você voltará para a tela inicial do WinConfig.
    > 2.  **Encontre o Arquivo `.exe` do Jogo:**
    >     * Na tela inicial do WinConfig, entre na **NOVA PASTA** que acabou de ser criada (ex: `MeuJogo.wine`).
    >     * Depois, entre na pasta `drive_c/`.
    >     * Depois, em `Program Files/`.
    >     * Depois, na pasta com o nome do seu jogo (ex: `MeuJogo/`).
    >     * Lá dentro, procure pelo arquivo `.exe` que inicia o seu jogo.
    > 3.  **Crie os "Arquivos Ajudantes" Finais:**
    >     * Selecione esse arquivo `.exe`.
    >     * Clique no botão `[Selecionar]` (da tela inicial do WinConfig).
    >     * Agora, o WinConfig fará o processo da seção 4.1 para este `.exe` que está DENTRO da sua "pasta de jogo completa". Isso vai criar os `autorun.cmd` e `batocera.plus` DENTRO da pasta `MeuJogo.wine/`.
    >     * Você pode até escolher fazer um backup e compactar essa "pasta de jogo completa" inteira, se quiser!
    > 4.  **Crie arquivos compactados ".wsquashfs" ou ".plus" (Caso seja de seu interesse):**
    >     * Você poderá copactar a pasta do jogo inteira se quiser. Para isso, basta aceitar quando a ferramenta perguntar se você quer compactar o jogo.
    >     * Ao compactar este ambiente ".wine" montado, o seu jogo já terá todas as dependências instaladas, e consequentemente este jogo irá rodar em qualquer outro batocera.
	>     * Ótimo para quem deseja compartilhar seus jogos com os amigos e deseja que os jogos funcionem sem pedir a instalação de recursos e dependências novamente.

**Outros Botões na "Montadora":**
* `[Redist - Instalador de Dependências]`: Leva você para a outra ferramenta Redist.
* `[Configurações]`: Volta para a tela principal de configurações do WinConfig.
* `[Ajuda]`: Mostra um guia rápido específico desta ferramenta.
* `[Fechar]`: Fecha esta ferramenta e volta para a tela inicial do WinConfig.

---

## 5. 🔧 Ajustando o WinConfig do seu Jeito (Configurações)

Clicando no botão `[Configurações]`, você pode mudar como o WinConfig funciona. As mudanças são salvas num arquivo para que ele lembre das suas preferências.

* **`Verificar Integridade (após extração):`** `Ligado` / `Desligado`
    * Se "Ligado", depois de abrir um arquivo compactado, ele dá uma olhada rápida para ver se os arquivos foram mesmo para a nova pasta.

* **`Log/Registro de Atividades:`** `Ligado` / `Desligado`
    * Se "Ligado", o WinConfig anota o que ele faz (coisas que deram certo, erros) num arquivo de texto. Isso pode ajudar a descobrir problemas.

* **`Diretório de ROMs Windows:`** Você escolhe a pasta.
    * É a pasta principal onde você guarda seus jogos de Windows. O WinConfig começa mostrando essa pasta.

* **`Backup Automático (após criar lançador):`** `Ligado` / `Desligado`
    * Se "Ligado", toda vez que você preparar um jogo, ele faz uma cópia de segurança automaticamente.

* **`Excluir Backup após Restauração:`** `Ligado` / `Desligado`
    * Se "Ligado", quando você restaurar um jogo de uma cópia de segurança, o arquivo da cópia é apagado depois.

* **`Diretório de Backup de Jogos:`** Você escolhe a pasta.
    * É onde suas cópias de segurança (`.bkpdrl`) serão guardadas.

* **`Perfil do AntiMicroX (para controle):`** Você escolhe o arquivo.
    * Se você usa um controle de videogame para mexer no WinConfig, aqui você diz qual arquivo de configuração do AntiMicroX usar.

* **`Bloco Compressão (Backup/Compress):`** Escolha um tamanho (`1M`, `512K`, etc.).
    * Afeta o quão "espremido" seu jogo fica quando você o compacta ou faz uma cópia de segurança. `1M` é uma boa escolha geral.

* **`Verificar Dependências (ao iniciar):`** `Ligado` / `Desligado`
    * Se "Ligado", quando o WinConfig começa, ele verifica se todos os "programinhas ajudantes" que ele precisa estão instalados no seu Batocera.

* **`(Redist) Modo Instalação Rápida (Personalizada):`** `Ligado` / `Desligado`
    * Muda como a ferramenta `[Redist - Instalador de Dependências]` funciona:
        * `Desligado` (Modo Normal): Copia tudo. Mais seguro, mas gasta mais espaço.
        * `Ligado` (Modo Rápido): Usa um método de "instalação inteligente" para economizar espaço. Mais rápido, mas pode não funcionar com todos os jogos.

* **`Versão do Batocera (afeta lançador/compressão):`** `Batocera Linux` / `Batocera Plus`.
    * Diga qual Batocera você usa. Isso muda um pouco como os jogos são preparados e compactados.

* **`Escolha seu Idioma (...)`:** Permite mudar o idioma do WinConfig (Português, Inglês, Espanhol, etc.). Você precisará fechar e abrir o WinConfig de novo para ver a mudança.

* **Botões Extras na Tela de Configurações:**
    * **`[Abrir AntiMicroX]`:** Abre o programa AntiMicroX para você ajustar os controles do seu joystick.
    * **`[Restaurar Configurações Padrão]`:** Faz todas as opções voltarem para como eram no começo.
    * **`[Monitor de Processos]`:** Mostra uma telinha com informações sobre o uso do processador do seu Batocera.
    * **`[Salvar Configurações]`:** Guarda as mudanças que você fez e fecha a tela de configurações.
    * **`[Fechar]`:** Fecha a tela de configurações sem guardar as últimas mudanças (a não ser que você tenha usado "Restaurar Padrões").

---

## 6. 🚀 Exemplos Práticos: Como fazer as coisas mais comuns

Aqui vão algumas "receitas" rápidas:

* **Situação 1: Tenho um jogo numa pasta, quero jogar no Batocera.**
    1.  Copie a pasta do jogo para a sua pasta de jogos de Windows no Batocera.
    2.  Abra o WinConfig. Ache a pasta do jogo, entre nela.
    3.  Clique no arquivo `.exe` que inicia o jogo.
    4.  Clique em `[Selecionar]`. Siga as perguntas sobre cópia de segurança e compactação.
    5.  Feche o WinConfig. Atualize a lista de jogos do Batocera.
    6.  **Não funcionou?** Tente abrir o jogo uma vez pelo Batocera. Depois, use o `[Redist - Instalador de Dependências]` no WinConfig para esse jogo.

* **Situação 2: Baixei um jogo num arquivo `.zip` (ou `.rar`).**
    1.  Copie o arquivo `.zip` para sua pasta de jogos de Windows.
    2.  Abra o WinConfig. Clique no arquivo `.zip`.
    3.  Clique em `[Selecionar]`. Espere ele "desempacotar" para uma nova pasta.
    4.  Agora, siga os passos da **Situação 1**, começando por entrar nessa nova pasta e achar o `.exe`.

* **Situação 3: Quero montar um "pacote completo" do meu jogo (ex: ele veio como instalador).**
    1.  Coloque os arquivos do instalador (ou os arquivos soltos do jogo) numa pasta dentro da sua pasta de jogos de Windows (ex: `MinhaPastaDeInstalacao.pc`).
    2.  Abra o WinConfig. Clique em `[Redist - Criar ambiente ".wine"]`.
    3.  Na nova tela, ache e marque a caixinha da `MinhaPastaDeInstalacao.pc`.
    4.  Clique em `[Selecionar este]`. Espere a "montagem".
    5.  Quando terminar, volte para a tela inicial do WinConfig.
    6.  Entre na nova pasta que foi criada (ex: `MinhaPastaDeInstalacao.wine`).
    7.  Vá para `drive_c/Program Files/MinhaPastaDeInstalacao/`.
    8.  (Se era um instalador, você pode precisar rodá-lo primeiro. Se não, ache o `.exe` principal do jogo.)
    9.  Clique no `.exe` principal do jogo.
    10. Clique em `[Selecionar]` (na tela inicial do WinConfig) para fazer os "arquivos ajudantes" para este "pacote completo".

* **Situação 4: Quero trazer de volta um jogo de uma cópia de segurança.**
    1.  Abra o WinConfig.
    2.  Clique em `[Restaurar Backup de Jogos]`.
    3.  Escolha o arquivo `.bkpdrl` da cópia de segurança.
    4.  Confirme. Espere. Pronto!

---

## 7. 🔬 Detalhes Extras (Para os Curiosos!)

* **Onde o WinConfig guarda suas coisas:**
    * Configurações: `/userdata/system/configs/bat-drl/WinConfig/configs.DRL`
    * Anotações (Logs): `/userdata/system/configs/bat-drl/WinConfig/logs/script.log`
    * Cópias de Segurança: `/userdata/system/configs/bat-drl/WinConfig/backup/` (normalmente)
    * Atalho no menu do Batocera: `/userdata/system/.local/share/applications/WinConfig.desktop`
    * Desinstalador no menu do Batocera: `/userdata/system/.local/share/applications/Remover_WinConfig.desktop`

* **Pasta dos "Programinhas Extras" (Redist):**
    * Os arquivos que o WinConfig usa para instalar DirectX, etc., precisam estar na pasta: `/userdata/system/configs/bat-drl/redist/`. Você precisa colocar os instaladores ou arquivos desses componentes lá.

* **Nomes das Pastas e Arquivos:**
    * Pastas de jogos preparadas: `NomeDoJogo.pc`, `NomeDoJogo.wine`, `NomeDoJogo.plus`
    * Cópias de segurança: `NomeDaPasta_backup_DATA_HORA.bkpdrl`

---

## 8. 🧩 Programinhas que o WinConfig Precisa para Funcionar

O WinConfig é como um maestro que comanda outros programinhas menores para fazer o trabalho. Ele precisa que estes estejam instalados no seu Batocera:

* `yad`: Cria todas as janelas e botões que você vê.
* `xdotool`: Ajuda com algumas coisinhas do mouse.
* `mksquashfs`: Usado para "espremer" os jogos (compactar) e fazer cópias de segurança.
* `unsquashfs`: Usado para "desespremer" os jogos e restaurar cópias de segurança.
* `unzip`: Para abrir arquivos `.zip`.
* `unrar`: Para abrir arquivos `.rar`.

> ℹ️ Não se preocupe muito com isso! Se você ligar a opção `Verificar Dependências (ao iniciar)` nas `[Configurações]`, o WinConfig te avisa se algum estiver faltando.

---

## 9. 📜 Novidades das Versões e Onde Pedir Ajuda

O WinConfig está sempre melhorando!
* O WinConfig é atualizado com melhorias e novas funcionalidades (detalhes no manual completo).
* **Datas Chave de Updates (Exemplos):**
    * **31-03-2025:** Lançamento base.
    * **02-04-2025:** Sistema de Backup '.bkpdrl', melhorias de UI e logs.
    * **10-04 & 22-04-2025:** Implementação e modos da ferramenta Redist (Instalador).
    * **22-05-2025:** Multi-idioma e correções.
    * **31-05-2025:** Lançamento da ferramenta "Redist - Criar ambiente ".wine"". Também foi implementado um desinstalador para caso o susuário deseje desinstalar esta ferramenta do sistema.

**Precisa de Ajuda?**

* **Dentro do WinConfig:** O botão `[Ajuda]` tem guias como este.

---

***Obrigado por usar o WinConfig - DRL Edition! Esperamos que ele torne sua experiência com jogos Windows no Batocera muito mais agradável.***
***Winconfig, 2025 by DRL Edition***

---
## 🧩 Implementações e Atualizações
***Atualização - 22.05.2025***

**Durante a instalação, será perguntado qual idioma você deseja para a ferramenta.**
**Esta ferramenta agora conta com os idiomas:*

**Portugês Brasil*

**Inglês*

**Espanhol*

**Italiano*

**Francês*


***Atualização - 31.05.2025***

**Correção de Bugs*

**Implementado a função "Redist - Criar Ambiente ".wine""*

**Adicionado um desinstalador, para caso o usuário deseje remover a ferramenta "WinConfig - Windows Game Fix" (Você poderá encontrar este desinstalador dentro da pasta de aplicações do batocera)*

---
## 10. 🎮 Suporte ao Gamepad
---
## Teclas e atalhos de controle de entrada para o Winconfig - Windows Game Fix - instalado no Batocera.

**O Winconfig - Windows Game Fix - já conta com um recurso de reconhecimento do gamepad, no entanto, a configuração de mapeamento ainda continua em fase de testes, mas você poderá realizar testes e personalizá-lo.**

![image](https://github.com/DRLEdition19/DRLEdition_Interface/blob/main/extra/joytick.jpg?raw=true)

***Estas configurações de mapeamento abaixo, são correspondentes com os botões do gamepad ilustrado acima.***

---

# 🎮 Configuração de Controles do Gamepad (Jogador 1 - Batocera) 🕹️

Este documento descreve o mapeamento dos botões do gamepad para o **Jogador 1**, como configurado no seu Batocera. Prepare-se para a ação! 🔥

## 🗺️ Mapeamento de Botões

Confira na tabela abaixo o que cada botão mágico do seu controle faz:

| Botão do Gamepad (Trigger) | Descrição da Ação / Botão do teclado |
| :------------------------- | :----------------------- |
| ⬆️ **D-PAD UP**                    | Move para Cima / Navegação  |
| ⬇️ **D-PAD DOWN**                  | Move para Baixo / Navegação |
| ⬅️ **D-PAD LEFT**                  | Move para Esquerda / Navegação |
| ➡️ **D-PAD RIGHT**                 | Move para Direita / Navegação |
| **1️⃣ / ⏹️ / Y**                     | Seleciona o ítem / BOTÃO SPACE DO TECLADO|
| **2️⃣ / ✖️ / B**                     | Confirmar / BOTÃO ENTER DO TECLADO|
| **3️⃣ / ⭕ / A**                     | Trocar Item / Pula para o próximo botão / BOTÃO TAB DO TECLADO |
| 🕹️ **L-ANALOG**             | Controla o Ponteiro do Mouse |
| ▶️ **START**                 | BOTÃO "F4"   |
| ➖ **SELECT**                | BOTÃO "ALT" |
| ↖️ **LB / L1**        | Botão Esquerdo do Mouse / Ação Secundária 1 |
| ↗️ **RB / B2**       | Botão Direito do Mouse / Ação Secundária 2 |

---

**✨ Dica:** As "Descrições da Ação" são exemplos comuns. A função exata pode mudar dependendo do gamepad, ou joystick, que você está usando. Divirta-se explorando! 🎉

***Esta ferramenta ainda está em fase de testes e desenvolvimento para melhoria contínua, e portanto você poderá encontrar bugs.***

![image](https://github.com/DRLEdition19/DRLEdition_Interface/blob/main/extra/Windows%20Game%20Fix%20on%20Batocera%20-%20logo.png?raw=true)

---
## 💯% Bahiano - Brasileiro 🇧🇷
