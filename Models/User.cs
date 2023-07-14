namespace _IPSHealth
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("User")]
    public partial class User
    {
        [Required]
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int ID { get; set; }

        [Required]
        [StringLength(50)]
        public string Name { get; set; }

        [Required]
        [StringLength(100)]
        public string Address { get; set; }

        [Required]
        [StringLength(50)]
        public string Town { get; set; }

        [Required]
        [StringLength(50)]
        public string County { get; set; }

        [Required]
        [StringLength(50)]
        public string Country { get; set; }

        [Required]
        [StringLength(50)]
        public string Email { get; set; }

        [Required]
        [DataType(DataType.DateTime)]
        [Column("Date Of Birth", TypeName = "date")]
        public DateTime Date_Of_Birth { get; set; }

        public bool IsActive { get; set; }

        [Required]
        [StringLength(50)]
        public string UserName { get; set; }

        [Required]
        [DataType(DataType.Password)]
        [StringLength(50)]
        public string Password { get; set; }

        [Required]
        [Range(0, 10)]
        public int Rating { get; set; }
    }
}
