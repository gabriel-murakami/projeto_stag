class ScorpValidator < ActiveModel::Validator
    def validate(record)
        if record.pf_pj == 'PF'
            if !BRDocuments::CPF.valid?(record.cpf)
                record.errors[:cpf] << 'CPF inválido'
            end
            if !(record.nome.match(/[a-zA-Z\u00C0-\u00FF ]+/i))
                record.errors[:nome] << 'Nome em branco'
            end
            if !(record.sobrenome.match(/[a-zA-Z\u00C0-\u00FF ]+/i))
                record.errors[:sobrenome] << 'Sobrenome em branco'
            end
            if (record.documento == "")
                record.errors[:documento] << 'Documento em branco'
            end
            if (record.orgao_emissor == "")
                record.errors[:orgao_emissor] << 'Orgao Emissor em branco'
            end
            if (record.estado_emissor == "")
                record.errors[:estado_emissor] << 'Estado Emissor em branco'
            end
            if (record.data_emissao == "")
                record.errors[:estado_emissor] << 'Data Emissão em branco'
            end
            record.cnpj = ""
            record.razao_social = ""
            record.nome_fantasia = ""
        elsif record.pf_pj == 'PJ'
            if !BRDocuments::CNPJ.valid?(record.cnpj)
                record.errors[:cnpj] << 'CNPJ inválido'
            end
            if (record.razao_social == "")
                record.errors[:razao_social] << "Razão Social em branco"
            end
            if (record.nome_fantasia == "")
                record.errors[:razao_social] << "Razão Social em branco"
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
