//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ShoesOnline.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class taiKhoanTV
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public taiKhoanTV()
        {
            this.donHangs = new HashSet<donHang>();
        }
    
        public int maKH { get; set; }
        public string taiKhoanKH { get; set; }
        public string matKhau { get; set; }
        public string hoDem { get; set; }
        public string tenTV { get; set; }
        public Nullable<System.DateTime> ngaySinh { get; set; }
        public string gioiTinh { get; set; }
        public string soDT { get; set; }
        public string email { get; set; }
        public string diaChi { get; set; }
        public Nullable<int> maQH { get; set; }
        public string newpass { get; set; }
        public string confirmpass { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<donHang> donHangs { get; set; }
        public virtual quanHuyen quanHuyen { get; set; }
    }
}
