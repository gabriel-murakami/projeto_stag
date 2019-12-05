class ScorpValidator < ActiveModel::Validator
    def validate(record)
        if record.pf_pj == 'PF'
            if !BRDocuments::CPF.valid?(record.cpf)
                record.errors[:cpf] << 'CPF inválido'
            end
        elsif record.pf_pj == 'PJ'
            if !BRDocuments::CNPJ.valid?(record.cnpj)
                record.errors[:cnpj] << 'CNPJ inválido'
            end
        end
    end
end
