namespace winform_hospital
{
    partial class Form_TiepNhan
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.txtTenNhanVien = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtTimKiem = new System.Windows.Forms.TextBox();
            this.dgvBenhNhanDK = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.cbBHYT = new System.Windows.Forms.CheckBox();
            this.cboTenPhongKham = new System.Windows.Forms.ComboBox();
            this.rtxtLyDoKham = new System.Windows.Forms.RichTextBox();
            this.txtSTTKham = new System.Windows.Forms.TextBox();
            this.txtSTTTiepNhan = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txtBHYT = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTenBenhNhan = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtMaPhieu = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.rdoOnl = new System.Windows.Forms.RadioButton();
            this.rdoOff = new System.Windows.Forms.RadioButton();
            this.btnLapPhieu = new System.Windows.Forms.Button();
            this.lbDate = new System.Windows.Forms.Label();
            this.btnThemBN = new System.Windows.Forms.Button();
            this.txtMaPhong = new System.Windows.Forms.TextBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvBenhNhanDK)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(101, 25);
            this.label1.TabIndex = 1;
            this.label1.Text = "Nhân viên";
            // 
            // txtTenNhanVien
            // 
            this.txtTenNhanVien.Enabled = false;
            this.txtTenNhanVien.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenNhanVien.Location = new System.Drawing.Point(144, 6);
            this.txtTenNhanVien.Name = "txtTenNhanVien";
            this.txtTenNhanVien.Size = new System.Drawing.Size(328, 33);
            this.txtTenNhanVien.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(12, 63);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(97, 25);
            this.label2.TabIndex = 1;
            this.label2.Text = "Tìm kiếm";
            // 
            // txtTimKiem
            // 
            this.txtTimKiem.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTimKiem.Location = new System.Drawing.Point(144, 60);
            this.txtTimKiem.Name = "txtTimKiem";
            this.txtTimKiem.Size = new System.Drawing.Size(328, 33);
            this.txtTimKiem.TabIndex = 2;
            this.txtTimKiem.TextChanged += new System.EventHandler(this.txtTimKiem_TextChanged);
            // 
            // dgvBenhNhanDK
            // 
            this.dgvBenhNhanDK.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvBenhNhanDK.Location = new System.Drawing.Point(13, 99);
            this.dgvBenhNhanDK.Name = "dgvBenhNhanDK";
            this.dgvBenhNhanDK.RowHeadersVisible = false;
            this.dgvBenhNhanDK.RowHeadersWidth = 51;
            this.dgvBenhNhanDK.RowTemplate.Height = 24;
            this.dgvBenhNhanDK.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvBenhNhanDK.Size = new System.Drawing.Size(590, 652);
            this.dgvBenhNhanDK.TabIndex = 3;
            this.dgvBenhNhanDK.SelectionChanged += new System.EventHandler(this.dgvBenhNhanDK_SelectionChanged);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.cbBHYT);
            this.groupBox1.Controls.Add(this.cboTenPhongKham);
            this.groupBox1.Controls.Add(this.rtxtLyDoKham);
            this.groupBox1.Controls.Add(this.txtMaPhong);
            this.groupBox1.Controls.Add(this.txtSTTKham);
            this.groupBox1.Controls.Add(this.txtSTTTiepNhan);
            this.groupBox1.Controls.Add(this.label9);
            this.groupBox1.Controls.Add(this.label8);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.txtBHYT);
            this.groupBox1.Controls.Add(this.label7);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txtTenBenhNhan);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.txtMaPhieu);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(628, 63);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(748, 581);
            this.groupBox1.TabIndex = 4;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Phiếu đăng ký khám";
            // 
            // cbBHYT
            // 
            this.cbBHYT.AutoSize = true;
            this.cbBHYT.Location = new System.Drawing.Point(532, 129);
            this.cbBHYT.Name = "cbBHYT";
            this.cbBHYT.Size = new System.Drawing.Size(125, 29);
            this.cbBHYT.TabIndex = 6;
            this.cbBHYT.Text = "Có BHYT";
            this.cbBHYT.UseVisualStyleBackColor = true;
            this.cbBHYT.Visible = false;
            this.cbBHYT.CheckedChanged += new System.EventHandler(this.cbBHYT_CheckedChanged);
            // 
            // cboTenPhongKham
            // 
            this.cboTenPhongKham.FormattingEnabled = true;
            this.cboTenPhongKham.Location = new System.Drawing.Point(206, 269);
            this.cboTenPhongKham.Name = "cboTenPhongKham";
            this.cboTenPhongKham.Size = new System.Drawing.Size(441, 33);
            this.cboTenPhongKham.TabIndex = 5;
            this.cboTenPhongKham.SelectedIndexChanged += new System.EventHandler(this.cboTenPhongKham_SelectedIndexChanged);
            // 
            // rtxtLyDoKham
            // 
            this.rtxtLyDoKham.Location = new System.Drawing.Point(206, 308);
            this.rtxtLyDoKham.Name = "rtxtLyDoKham";
            this.rtxtLyDoKham.Size = new System.Drawing.Size(535, 138);
            this.rtxtLyDoKham.TabIndex = 3;
            this.rtxtLyDoKham.Text = "";
            // 
            // txtSTTKham
            // 
            this.txtSTTKham.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSTTKham.Location = new System.Drawing.Point(206, 230);
            this.txtSTTKham.Name = "txtSTTKham";
            this.txtSTTKham.Size = new System.Drawing.Size(82, 33);
            this.txtSTTKham.TabIndex = 2;
            // 
            // txtSTTTiepNhan
            // 
            this.txtSTTTiepNhan.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtSTTTiepNhan.Location = new System.Drawing.Point(659, 50);
            this.txtSTTTiepNhan.Name = "txtSTTTiepNhan";
            this.txtSTTTiepNhan.Size = new System.Drawing.Size(83, 33);
            this.txtSTTTiepNhan.TabIndex = 2;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(38, 234);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(105, 25);
            this.label9.TabIndex = 1;
            this.label9.Text = "STT khám";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(527, 53);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(120, 25);
            this.label8.TabIndex = 1;
            this.label8.Text = "Số tiếp nhận";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(38, 308);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(116, 25);
            this.label6.TabIndex = 1;
            this.label6.Text = "Lý do khám";
            // 
            // txtBHYT
            // 
            this.txtBHYT.Enabled = false;
            this.txtBHYT.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtBHYT.Location = new System.Drawing.Point(206, 128);
            this.txtBHYT.Name = "txtBHYT";
            this.txtBHYT.Size = new System.Drawing.Size(282, 33);
            this.txtBHYT.TabIndex = 2;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(38, 131);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(71, 25);
            this.label7.TabIndex = 1;
            this.label7.Text = "BHYT";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(38, 272);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(118, 25);
            this.label5.TabIndex = 1;
            this.label5.Text = "Phòng khám";
            // 
            // txtTenBenhNhan
            // 
            this.txtTenBenhNhan.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTenBenhNhan.Location = new System.Drawing.Point(206, 89);
            this.txtTenBenhNhan.Name = "txtTenBenhNhan";
            this.txtTenBenhNhan.Size = new System.Drawing.Size(535, 33);
            this.txtTenBenhNhan.TabIndex = 2;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(38, 92);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(139, 25);
            this.label4.TabIndex = 1;
            this.label4.Text = "Tên bệnh nhân";
            // 
            // txtMaPhieu
            // 
            this.txtMaPhieu.Enabled = false;
            this.txtMaPhieu.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaPhieu.Location = new System.Drawing.Point(206, 50);
            this.txtMaPhieu.Name = "txtMaPhieu";
            this.txtMaPhieu.Size = new System.Drawing.Size(185, 33);
            this.txtMaPhieu.TabIndex = 2;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(38, 53);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(95, 25);
            this.label3.TabIndex = 1;
            this.label3.Text = "Mã phiếu";
            // 
            // rdoOnl
            // 
            this.rdoOnl.AutoSize = true;
            this.rdoOnl.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdoOnl.Location = new System.Drawing.Point(639, 7);
            this.rdoOnl.Name = "rdoOnl";
            this.rdoOnl.Size = new System.Drawing.Size(91, 29);
            this.rdoOnl.TabIndex = 4;
            this.rdoOnl.TabStop = true;
            this.rdoOnl.Text = "Online";
            this.rdoOnl.UseVisualStyleBackColor = true;
            this.rdoOnl.CheckedChanged += new System.EventHandler(this.rdoOnl_CheckedChanged);
            // 
            // rdoOff
            // 
            this.rdoOff.AutoSize = true;
            this.rdoOff.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rdoOff.Location = new System.Drawing.Point(782, 7);
            this.rdoOff.Name = "rdoOff";
            this.rdoOff.Size = new System.Drawing.Size(95, 29);
            this.rdoOff.TabIndex = 4;
            this.rdoOff.TabStop = true;
            this.rdoOff.Text = "Offline";
            this.rdoOff.UseVisualStyleBackColor = true;
            this.rdoOff.CheckedChanged += new System.EventHandler(this.rdoOff_CheckedChanged);
            // 
            // btnLapPhieu
            // 
            this.btnLapPhieu.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnLapPhieu.Location = new System.Drawing.Point(628, 650);
            this.btnLapPhieu.Name = "btnLapPhieu";
            this.btnLapPhieu.Size = new System.Drawing.Size(146, 58);
            this.btnLapPhieu.TabIndex = 5;
            this.btnLapPhieu.Text = "Lập phiếu";
            this.btnLapPhieu.UseVisualStyleBackColor = true;
            // 
            // lbDate
            // 
            this.lbDate.AutoSize = true;
            this.lbDate.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbDate.Location = new System.Drawing.Point(1261, 9);
            this.lbDate.Name = "lbDate";
            this.lbDate.Size = new System.Drawing.Size(54, 25);
            this.lbDate.TabIndex = 1;
            this.lbDate.Text = "Date";
            // 
            // btnThemBN
            // 
            this.btnThemBN.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThemBN.Location = new System.Drawing.Point(515, 60);
            this.btnThemBN.Name = "btnThemBN";
            this.btnThemBN.Size = new System.Drawing.Size(88, 33);
            this.btnThemBN.TabIndex = 5;
            this.btnThemBN.Text = "Thêm";
            this.btnThemBN.UseVisualStyleBackColor = true;
            this.btnThemBN.Visible = false;
            // 
            // txtMaPhong
            // 
            this.txtMaPhong.Font = new System.Drawing.Font("Times New Roman", 13.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtMaPhong.Location = new System.Drawing.Point(659, 269);
            this.txtMaPhong.Name = "txtMaPhong";
            this.txtMaPhong.Size = new System.Drawing.Size(82, 33);
            this.txtMaPhong.TabIndex = 2;
            // 
            // Form_TiepNhan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1388, 763);
            this.Controls.Add(this.btnThemBN);
            this.Controls.Add(this.btnLapPhieu);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.dgvBenhNhanDK);
            this.Controls.Add(this.rdoOff);
            this.Controls.Add(this.rdoOnl);
            this.Controls.Add(this.txtTimKiem);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtTenNhanVien);
            this.Controls.Add(this.lbDate);
            this.Controls.Add(this.label1);
            this.Name = "Form_TiepNhan";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form_TiepNhan";
            this.Load += new System.EventHandler(this.Form_TiepNhan_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvBenhNhanDK)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtTenNhanVien;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txtTimKiem;
        private System.Windows.Forms.DataGridView dgvBenhNhanDK;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txtTenBenhNhan;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtMaPhieu;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.RichTextBox rtxtLyDoKham;
        private System.Windows.Forms.TextBox txtSTTKham;
        private System.Windows.Forms.TextBox txtSTTTiepNhan;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtBHYT;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.CheckBox cbBHYT;
        private System.Windows.Forms.ComboBox cboTenPhongKham;
        private System.Windows.Forms.RadioButton rdoOnl;
        private System.Windows.Forms.RadioButton rdoOff;
        private System.Windows.Forms.Button btnLapPhieu;
        private System.Windows.Forms.Label lbDate;
        private System.Windows.Forms.Button btnThemBN;
        private System.Windows.Forms.TextBox txtMaPhong;
    }
}