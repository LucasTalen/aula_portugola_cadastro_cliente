Algoritmo "semnome"
Var
   nome,email,endereco:caracter
   idade:inteiro
   id_cliente:inteiro
   nome_cliente:caracter
   idade_cliente:inteiro
   email_cliente:caracter
   endereco_cliente:caracter
   laco:logico

procedimento pedir_nome
inicio
   escreval("Digite seu nome: ")
   leia(nome_cliente)
fimprocedimento

funcao validar_nome():caracter
inicio
   laco <- verdadeiro
   enquanto laco = verdadeiro faca
      pedir_nome
      se (nome_cliente = "") entao
         escreval("Seu nome nao pode ficar em branco")
      senao
         laco <- falso
      fimse
   fimenquanto
fimfuncao

procedimento pedir_idade
inicio
   escreval("Digite sua idade: ")
   leia(idade_cliente)
fimprocedimento

funcao validar_idade():inteiro
inicio
   laco <- verdadeiro
   enquanto laco = verdadeiro faca
      pedir_idade
      se (idade_cliente < 18) entao
         escreval("Idade insuficiente")
      fimse
      se (idade_cliente = 0) entao
         escreval("Digite uma idade valida")
      fimse
      se (idade_cliente >= 18) entao
         laco <- falso
      fimse
   fimenquanto
fimfuncao

procedimento pedir_email
inicio
   escreval("Digite seu email: ")
   leia(email_cliente)
fimprocedimento

funcao validar_email():caracter
inicio
   laco <- verdadeiro
   enquanto laco = verdadeiro faca
      pedir_email
      se (email_cliente = "") entao
         escreval("Digite um email valido")
      senao
         laco <- falso
      fimse
   fimenquanto
fimfuncao

procedimento pedir_endereco
inicio
   escreval("Digite seu endereço: ")
   leia(endereco_cliente)
fimprocedimento

procedimento gerar_id
inicio
   id_cliente <- randi(1000) + randi(10)
fimprocedimento

Inicio
escreval(validar_nome)
escreval
escreval(validar_idade)
escreval
escreval(validar_email)
escreval
pedir_endereco
escreval
gerar_id
escreval


escreval("Dados Do Cliente")
escreval("-----------------------")
escreval("Codigo do CLiente: ", id_cliente)
   escreval("Nome: ", nome_cliente)
   escreval("Idade: ", idade_cliente)
   escreval("E-mail: ", email_cliente)
   escreval("Endereço:", endereco_cliente)


Fimalgoritmo