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
    
    public partial class donHang
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public donHang()
        {
            this.ctDonHangs = new HashSet<ctDonHang>();
        }
    
        public int soDH { get; set; }
        public string tenKH { get; set; }
        public int maKH { get; set; }
        public string taiKhoan { get; set; }
        public Nullable<System.DateTime> ngayDat { get; set; }
        public Nullable<System.DateTime> ngayGH { get; set; }
        public string diachiGH { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ctDonHang> ctDonHangs { get; set; }
        public virtual KhachHang KhachHang { get; set; }
        public virtual taiKhoanTV taiKhoanTV { get; set; }
    }
}
