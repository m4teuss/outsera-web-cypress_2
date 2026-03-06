Feature: Fluxo de Login

    Background: Login no Sistema
        Given que eu acesso a tela de login do sistema

    Scenario Outline: CT_001# Login com sucesso
        When efetuo login com <user> e <password>
        Then devo ser redirecionado para tela principal
        And devo visualizar a seguinte mensagem <mensagemSucesso>

        Examples:
            | user                    | password    | mensagemSucesso  |
            | qa_testers@qabrains.com | Password123 | Login Successful |


    Scenario Outline: CT_002# Login sem sucesso credenciais inválidas
        When efetuo login com <user> e <password>
        Then devo visualizar a seguinte erro <mensagemErroLogin>

        Examples:
            | user                    | password       | mensagemErroLogin                         |
            | qa_testers@qabrains.com | senhaerrada123 | Your password is invalid!                 |
            | formato@errado1         | ApenasSenha    | Your email and password both are invalid! |



    Scenario Outline: CT_003# Login sem sucesso com campos email/senha vazios
        When efetuo login com <user> e <password>
        Then devo visualizar o seguinte erro de campos vazios <mensagemErroLogin>

        Examples:
            | user                    | password    | mensagemErroLogin            |
            | vazio                   | ApenasSenha | Email is a required field    |
            | qa_testers@qabrains.com | vazio       | Password is a required field |

