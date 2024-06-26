## Calculo de Imposto de Renda

Cansado de conferir os descontos em sua folha de pagamento manualmente, João da Silva lhe
contratou para escrever um aplicativo que faça o cálculo do valor de imposto de renda a ser
recolhido de seu salário. A tabela de descontos do IRPF 2024 é a seguinte:

| Faixas do IR |  Parcela salarial em cada faixa   | Alíquota |
|:------------:|:---------------------------------:|:--------:|
|   Faixa 1:   |           Até R$ 2.112            |  isento  |
|   Faixa 2:   |     De 2.112,01 até 2.826,66      |   7,5%   |
|   Faixa 3:   |     De 2.826,67 até 3.751,06      |   15%    |
|   Faixa 4:   |     De 3.751,07 até 4.664,68      |  22,5%   |
|   Faixa 5:   |       Acima de R$ 4.664,68        |  27,5%   |
`Tabela-1 Faixa IRPF 2024`


A tabela abaixo mostra um exemplo de cálculo para um salário de R$ 4.000,00:

| Faixas do IR | Parcela salarial em cada faixa |   Alíquota    | Imposto pago sobre a parcela |
|:------------:|:------------------------------:|:-------------:|:----------------------------:|
|      1       |          Até R$ 2.112          |    isento     |             Zero             |
|      2       |           R$ 714,65            |     7,5%      |           R$ 53,59           |
|      3       |           R$ 924,39            |      15%      |          R$ 138,66           |
|      4       |           R$ 248,93            |     22,5%     |           R$ 56,01           |
|    Total     |       Salário: R$ 4.000        | Efetiva: 6,2% |    Total pago: R$ 248,26     |



Sabendo disso escreva uma classe Pessoa deve receber via construtor os atributos nome(String)
e salário (double);
Em seguida crie uma classe FaixaImpostoDeRenda. Essa classe retorna um inteiro conforme a
faixa da tabela-1. Crie outra classe ImpostoDeRenda que receberá como parâmetro um objeto da
classe Pessoa, em seu construtor. A classe ImpostoDeRenda deverá ter um método calcular( ),
calculando o IR a pagar e definindo a faixa de IR da pessoa e também o método imprimir( ), que
deverá imprimir as informações na tela.
Após na classe principal crie alguns objetos do tipo Pessoa e ImpostoDeRenda e imprima no
console.

Ex.:
Lucas seu salário é R$ 5700,00 sua faixa de imposto é 5 e o valor do imposto de renda a ser pago
é: R$ 682,54

Bônus.:
Adquira as informações de nome e salário da classe Pessoa via console, utilizando a classe
Scanner;

Ex.:
```
Scanner scanner = new Scanner(System.in);
var nome = scanner.nextDouble();
scanner.close();
```

Mais informações:
https://g1.globo.com/economia/imposto-de-renda/noticia/2024/05/08/imposto-de-renda-2024-vejaa-tabela-de-aliquotas-e-saiba-como-fazer-o-calculo.ghtml


