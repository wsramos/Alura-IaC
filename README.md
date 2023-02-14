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

- **Iniciar um servidor Http no linux**
    - OBS: O comando abaixo instancia um servidor web que permanecerá executando mesmo após o fechamento do SSH.
    ~~~~
    nohup busybox httpd -f -p 8080 &
    ~~~~

- **Executar tarefas do Ansible**
    - O Comando abaixo informa na sequência, qual arquivo playbook deve ser executado, qual qual usuário executar (da máquina da AWS nesse caso), qual a chave privada para se conectar via ssh e qual a máquina que irá se conectar. O Ansible não pode ser executado em um host Windows diretamente, mas pode ser executado no Windows Subsystem for Linux (WSL).   
    ~~~~
    ansible-playbook playbook.yml -u ubuntu --private-key iac-estudo.pem -i hosts.yml
    ~~~~

# Observações

- Para acesso via SSH é necessário criar um par de chaves e configura-la no arquivo main.tf.
    - Além disso, é necessário criar uma regra de acesso na área de Security groups. No meu caso eu criei uma regra de entrada e saída permitindo acesso pelo IP da minha máquina local.
- Ansible é uma ferramenta de gerenciamento de configurações aplicadas pelo Terraform
