﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PredDiplom.DB
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class bazaEntities : DbContext
    {
        public bazaEntities()
            : base("name=bazaEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Группа> Группа { get; set; }
        public virtual DbSet<Заявки> Заявки { get; set; }
        public virtual DbSet<ИД_Специальность> ИД_Специальность { get; set; }
        public virtual DbSet<ИД_Статус_заявления> ИД_Статус_заявления { get; set; }
        public virtual DbSet<Преподаватель> Преподаватель { get; set; }
        public virtual DbSet<Сотрудники> Сотрудники { get; set; }
        public virtual DbSet<Статус_студента> Статус_студента { get; set; }
        public virtual DbSet<Студент> Студент { get; set; }
        public virtual DbSet<Тип_сотрудники> Тип_сотрудники { get; set; }
        public virtual DbSet<Форма_обучения> Форма_обучения { get; set; }
    }
}
