using DevIO.Business.Core.Data;
using DevIO.Business.Core.Models;
using DevIO.Infra.Data.Context;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace DevIO.Infra.Data.Repository
{
    public class Repository<TEntity> : IRepository<TEntity> where TEntity : Entity, new()
    {

        protected readonly MeuDbContext _meuDbContext;
        protected readonly DbSet<TEntity> _dbSet;

        public Repository()
        {
            _meuDbContext = new MeuDbContext();
            _dbSet = _meuDbContext.Set<TEntity>();
        }

        public async Task<IEnumerable<TEntity>> Buscar(Expression<Func<TEntity, bool>> predicate)
        {
            return await _dbSet.AsNoTracking().Where(predicate).ToListAsync();
        }

        public virtual async Task<TEntity> ObterPorId(Guid id)
        {
            return await _dbSet.FindAsync(id);
        }

        public virtual async Task<List<TEntity>> ObterTodos()
        {
            return await _dbSet.ToListAsync();
        }

        public virtual async Task Adicionar(TEntity entity)
        {
            _dbSet.Add(entity);

            await SaveChanges();
        }

        public virtual async Task Atualizar(TEntity entity)
        {
            _meuDbContext.Entry(entity).State = EntityState.Modified;
            await SaveChanges();
        }

        public virtual async Task Remover(Guid id)
        {
            _meuDbContext.Entry(new TEntity { Id = id }).State = EntityState.Deleted;
            await SaveChanges();
        }

        public async Task<int> SaveChanges()
        {
            return await _meuDbContext.SaveChangesAsync();
        }

        public void Dispose()
        {
            _meuDbContext?.Dispose();
        }
    }
}
