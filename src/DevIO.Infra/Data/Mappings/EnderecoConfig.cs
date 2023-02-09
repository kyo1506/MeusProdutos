using DevIO.Business.Models.Fornecedores;
using System.Data.Entity.ModelConfiguration;

namespace DevIO.Infra.Data.Mappings
{
    public class EnderecoConfig : EntityTypeConfiguration<Endereco>
    {
        public EnderecoConfig()
        {
            HasKey(x => x.Id);

            Property(p => p.Logradouro)
                .IsRequired()
                .HasMaxLength(200);

            Property(p => p.Numero)
                .IsRequired()
                .HasMaxLength(50);

            Property(p => p.Cep)
                .IsRequired()
                .HasMaxLength(8)
                .IsFixedLength();

            Property(p => p.Complemento)
                .HasMaxLength(250);

            Property(p => p.Bairro)
                .IsRequired()
                .HasMaxLength(100);

            Property(p => p.Cidade)
                .IsRequired()
                .HasMaxLength(100);

            Property(p => p.Estado)
                .IsRequired()
                .HasMaxLength(100);

            ToTable("Enderecos");
        }
    }
}
