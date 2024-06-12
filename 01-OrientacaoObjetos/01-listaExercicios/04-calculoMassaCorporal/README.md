## Cálculo de Massa Corporal.

Você foi contratado para desenvolver uma aplicativo Java,para uma empresa chamada HealthCare. Esse software deverá ter uma classe chamada Paciente que possui um construtor
que recebe o seu peso em quilos e sua altura em metros, ambos utilizando o tipo double. Crie um
método chamado calcularIMC() que calcula o índice de Massa Corporal de acordo com a fórmula
IMC = peso (quilos) / (altura * altura (metros)). Crie também um método chamado diagnostico()
que utiliza o método calcularIMC() e retorna uma String de acordo com as seguintes faixas de
valor:


● Baixopesomuito grave = IMC abaixo de 16 kg/m²</br>
● Baixopesograve = IMC entre 16 e 16,99 kg/m²</br>
● Baixopeso=IMCentre 17 e 18,49 kg/m²</br>
● Pesonormal =IMCentre 18,50 e 24,99 kg/m²</br>
● Sobrepeso =IMCentre 25 e 29,99 kg/m²</br>
● Obesidade grau I = IMC entre 30 e 34,99 kg/m²</br>
● Obesidade grau II = IMC entre 35 e 39,99 kg/m²</br>
● Obesidade grau III (obesidade mórbida) = IMC igual ou maior que 40 kg/m²</br>

Escreva uma classe chamada Principal em que se criam 3 instâncias da classe Paciente com
valores diferentes e se imprime no console o resultado dos dois métodos criados.

Bônus: Crie um atributo nome,para a classe paciente,e um método setNome(),para dar nome
aos pacientes. Após,escreva no console a mensagem configurada anteriormente junto ao nome
do paciente.

Ex.: O diagnóstico do pac.Lucas é Pesonormal = IMC entre 18,50 e 24,99kg/m²