//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace UP41.Cumponents
{
    using System;
    using System.Collections.Generic;
    
    public partial class UserTasks
    {
        public int Id { get; set; }
        public Nullable<int> IdTask { get; set; }
        public string Login { get; set; }
    
        public virtual PerformTasks PerformTasks { get; set; }
        public virtual User User { get; set; }
    }
}