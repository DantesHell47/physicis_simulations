# Simulação de Lançamento de Projéteis
Este é um programa em Julia que simula o lançamento de projéteis em diferentes condições, como ângulo de lançamento, velocidade inicial e resistência do ar. O código calcula a trajetória do projétil e fornece visualização dos resultados.

## Descrição do Código
O código consiste em uma função projectile_simulation que recebe três parâmetros: angle (ângulo de lançamento em radianos), initial_velocity (velocidade inicial do projétil) e air_resistance (resistência do ar). A função calcula a trajetória do projétil lançado com base nesses parâmetros e retorna os vetores x e y que representam as coordenadas horizontais e verticais da trajetória, respectivamente.

Além disso, o código inclui um conjunto de testes automatizados usando a biblioteca Test (biblioteca padrão do Julia). Os testes verificam se a função projectile_simulation produz os resultados esperados para diferentes cenários de lançamento de projéteis. Eles testam o comprimento dos vetores de coordenadas, os valores iniciais e finais das coordenadas, e o valor máximo da coordenada horizontal (x).

## Uso
Para executar a simulação e visualizar os resultados, basta chamar a função projectile_simulation com os parâmetros desejados. O programa exibirá um gráfico mostrando a trajetória do projétil.

## Contribuição
Contribuições são bem-vindas! Se você encontrar algum problema, tiver sugestões de melhorias ou quiser adicionar novos recursos, sinta-se a vontade para abrir uma nova issue ou enviar um pull request.

## Licença
Este projeto é licenciado sob a MIT License. Sinta-se a vontade para usar, modificar e distribuir o código de acordo com os termos da licença.




