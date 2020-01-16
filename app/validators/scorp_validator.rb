class ScorpValidator < ActiveModel::Validator
    def validate(record)
        if record.pf_pj == 'PF'
            if !BRDocuments::CPF.valid?(record.cpf)
                record.errors[:cpf] << 'CPF inválido'
            end
            if !(record.nome.match(/[a-zA-Z\u00C0-\u00FF ]+/i) and record.nome.length <= 50 and record.nome.length >= 3)
                record.errors[:nome] << 'Nome inválido'
            end
            if !(record.sobrenome.match(/[a-zA-Z\u00C0-\u00FF ]+/i) and record.sobrenome.length <= 50 and record.sobrenome.length >= 3)
                record.errors[:sobrenome] << 'Sobrenome inválido'
            end
            if (record.documento == "" or record.documento.length != 9)
                record.errors[:documento] << 'Documento inválido'
            end
            if (record.orgao_emissor == "" or record.orgao_emissor.length > 15 or record.orgao_emissor.length < 3)
                record.errors[:orgao_emissor] << 'Orgao Emissor inválido'
            end
            if (record.estado_emissor == "" or record.estado_emissor.length != 2)
                record.errors[:estado_emissor] << 'Estado Emissor inválido'
            end
            if (record.data_emissao == "")
                record.errors[:estado_emissor] << 'Data Emissão inválido'
            end
            if (record.email == "" or record.email.length > 50)
                record.errors[:email] << "Email inválido"
            end
            if (record.logradouro == "" or record.logradouro.length > 50)
                record.errors[:logradouro] << "Logradouro inválido"
            end
            if (record.cidade == "" or record.cidade.length > 50)
                record.errors[:cidade] << "Cidade inválida"
            end
            if (record.bairro == "" or record.bairro.length > 50)
                record.errors[:bairro] << "Bairro inválido"
            end
            if (record.numero == "" or record.numero.length > 5)
                record.errors[:numero] << "Número inválido"
            end
            record.cnpj = ""
            record.razao_social = ""
            record.nome_fantasia = ""
        elsif record.pf_pj == 'PJ'
            if !BRDocuments::CNPJ.valid?(record.cnpj)
                record.errors[:cnpj] << 'CNPJ inválido'
            end
            if (record.razao_social == "" or record.razao_social.length > 50 or record.razao_social.length < 3)
                record.errors[:razao_social] << "Razão Social inválido"
            end
            if (record.nome_fantasia == "" or record.nome_fantasia.length > 50 or record.nome_fantasia.length < 3)
                record.errors[:razao_social] << "Razão Social inválido"
            end
            if (record.email.length == "" or record.email.length > 50)
                record.errors[:email] << "Email inválido"
            end
            if (record.logradouro == "" or record.logradouro.length > 50)
                record.errors[:logradouro] << "Logradouro inválido"
            end
            if (record.cidade == "" or record.cidade.length > 50)
                record.errors[:cidade] << "Cidade inválida"
            end
            if (record.bairro == "" or record.bairro.length > 50)
                record.errors[:bairro] << "Bairro inválido"
            end
            if (record.numero == "" or record.numero.length > 5)
                record.errors[:numero] << "Número inválido"
            end
            record.nome = ""
            record.sobrenome = ""
            record.cpf = ""
            record.documento = ""
            record.orgao_emissor = ""
            record.estado_emissor = ""
            record.data_emissao = "0000-00-00"
        end
    end
end
