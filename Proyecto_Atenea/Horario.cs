//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Proyecto_Atenea
{
    using System;
    using System.Collections.Generic;
    
    public partial class Horario
    {
        public int ID_Horario { get; set; }
        public string Aula { get; set; }
        public System.DateTime Horario_Inicio { get; set; }
        public System.DateTime Horario_Fin { get; set; }
        public Nullable<int> ID_Grupo { get; set; }
        public System.DateTime Dia { get; set; }
    
        public virtual Grupo Grupo { get; set; }
    }
}
