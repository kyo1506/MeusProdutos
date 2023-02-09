﻿using DevIO.Business.Models.Produtos;
using System;
using System.Data.Entity;
using System.Collections.Generic;
using System.Threading.Tasks;
using System.Linq;

namespace DevIO.Infra.Data.Repository
{
    public class ProdutoRepository : Repository<Produto>, IProdutoRepository
    {
        public async Task<Produto> ObterProdutoForncedor(Guid id)
        {
            return await _meuDbContext.Produtos.AsNoTracking()
                .Include(p => p.Fornecedor)
                .FirstOrDefaultAsync(p => p.Id == id);

        }

        public async Task<IEnumerable<Produto>> ObterProdutosFornecedores()
        {
            return await _meuDbContext.Produtos.AsNoTracking()
                .Include(p => p.Fornecedor)
                .OrderBy(p => p.Nome).ToListAsync();
        }

        public async Task<IEnumerable<Produto>> ObterProdutosPorFornecedor(Guid fornecedorId)
        {
            return await Buscar(p => p.FornecedorId == fornecedorId);
        }
    }
}
