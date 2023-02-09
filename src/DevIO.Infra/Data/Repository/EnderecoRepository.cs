﻿using DevIO.Business.Models.Fornecedores;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DevIO.Infra.Data.Repository
{
    public class EnderecoRepository : Repository<Endereco>, IEnderecoRepository
    {
        public async Task<Endereco> ObterEnderecoPorFornecedor(Guid fornecedorId)
        {
            return await _meuDbContext.Enderecos.AsNoTracking()
                .FirstOrDefaultAsync(f => f.Id == fornecedorId);
        }
    }
}
