# Alura-IaC
Repositório para estudo de configuração de uma plataforma como Código

# Comandos
 - **Comando para instanciar o repositório Terraform:**
    ~~~~
    tarraform init
    ~~~~
 - **Comando para verificar o que será executado de acordo com o arquivo de infra criado:**
    - OBS: know after apply: só é possível 
    saber depois que a instancia for criada.

    ~~~~
    terraform plan
    ~~~~
- **Criar a máquina**
    ~~~~
    terraform apply
    ~~~~

# Observações

- Para acesso via SSH é necessário criar um par de chaves e configura-la no arquivo main.tf.
    - Além disso, é necessário criar uma regra de acesso na área de Security groups. No meu caso eu criei uma regra de entrada e saída permitindo acesso pelo IP da minha máquina local.