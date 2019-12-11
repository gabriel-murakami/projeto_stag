class ScorpValidator < ActiveModel::Validator
    def validate(record)
        if record.pf_pj == 'PF'
            if !BRDocuments::CPF.valid?(record.cpf)
                record.errors[:cpf] << 'CPF inválido'
            end
            record.cnpj = nil
            record.razao_social = nil
            record.nome_fantasia = nil
        elsif record.pf_pj == 'PJ'
            if !BRDocuments::CNPJ.valid?(record.cnpj)
                record.errors[:cnpj] << 'CNPJ inválido'
            end
            record.nome = nil
            record.sobrenome = nil
            record.cpf = nil
            record.documento = nil
            record.orgao_emissor = nil
            record.estado_emissor = nil
            record.data_emissao = "0000-00-00"
        end
        
    end
end
