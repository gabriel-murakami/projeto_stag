class ScorpValidator < ActiveModel::Validator
    def validate(record)
        if record.pf_pj == 'PF'
            if !BRDocuments::CPF.valid?(record.cpf)
                record.errors[:cpf] << 'CPF inválido'
            end
            record.cnpj = ""
            record.razao_social = ""
            record.nome_fantasia = ""
        elsif record.pf_pj == 'PJ'
            if !BRDocuments::CNPJ.valid?(record.cnpj)
                record.errors[:cnpj] << 'CNPJ inválido'
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
