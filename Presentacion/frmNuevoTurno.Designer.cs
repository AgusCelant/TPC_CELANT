﻿namespace Presentacion
{
    partial class frmNuevoTurno
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
            this.btnAceptar = new System.Windows.Forms.Button();
            this.lblNombre = new System.Windows.Forms.Label();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblDNI = new System.Windows.Forms.Label();
            this.lblObraSocial = new System.Windows.Forms.Label();
            this.lblNombreObraSocial = new System.Windows.Forms.Label();
            this.txtDNI = new System.Windows.Forms.TextBox();
            this.txtApellido = new System.Windows.Forms.TextBox();
            this.txtNroOS = new System.Windows.Forms.TextBox();
            this.lblFechaNac = new System.Windows.Forms.Label();
            this.dtpFehaTurno = new System.Windows.Forms.DateTimePicker();
            this.txtOBSocial = new System.Windows.Forms.TextBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.dgvListaTurnos = new System.Windows.Forms.DataGridView();
            this.gbxDatosPaciente = new System.Windows.Forms.GroupBox();
            this.btnCompletarDatos = new System.Windows.Forms.Button();
            this.cboHorarios = new System.Windows.Forms.ComboBox();
            this.lblHorario = new System.Windows.Forms.Label();
            this.txtValorConsulta = new System.Windows.Forms.TextBox();
            this.lblValorConsulta = new System.Windows.Forms.Label();
            this.txtMedico = new System.Windows.Forms.TextBox();
            this.lblMedico = new System.Windows.Forms.Label();
            this.lblEspecialidad = new System.Windows.Forms.Label();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.txtFiltrar = new System.Windows.Forms.TextBox();
            this.lblFiltrar = new System.Windows.Forms.Label();
            this.btnCompletarMedico = new System.Windows.Forms.Button();
            this.cboEspecialidades = new System.Windows.Forms.ComboBox();
            ((System.ComponentModel.ISupportInitialize)(this.dgvListaTurnos)).BeginInit();
            this.gbxDatosPaciente.SuspendLayout();
            this.SuspendLayout();
            // 
            // btnAceptar
            // 
            this.btnAceptar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnAceptar.BackColor = System.Drawing.SystemColors.Control;
            this.btnAceptar.Location = new System.Drawing.Point(919, 109);
            this.btnAceptar.Name = "btnAceptar";
            this.btnAceptar.Size = new System.Drawing.Size(110, 49);
            this.btnAceptar.TabIndex = 1;
            this.btnAceptar.Text = "Aceptar";
            this.btnAceptar.UseVisualStyleBackColor = false;
            this.btnAceptar.Click += new System.EventHandler(this.btnAceptar_Click);
            // 
            // lblNombre
            // 
            this.lblNombre.AutoSize = true;
            this.lblNombre.BackColor = System.Drawing.SystemColors.Menu;
            this.lblNombre.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombre.Location = new System.Drawing.Point(31, 17);
            this.lblNombre.Name = "lblNombre";
            this.lblNombre.Size = new System.Drawing.Size(69, 18);
            this.lblNombre.TabIndex = 3;
            this.lblNombre.Text = "Nombre:";
            // 
            // txtNombre
            // 
            this.txtNombre.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtNombre.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtNombre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtNombre.Enabled = false;
            this.txtNombre.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNombre.Location = new System.Drawing.Point(106, 17);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(180, 22);
            this.txtNombre.TabIndex = 4;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.SystemColors.Menu;
            this.label1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(28, 45);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(72, 18);
            this.label1.TabIndex = 5;
            this.label1.Text = "Apellido:";
            // 
            // lblDNI
            // 
            this.lblDNI.AutoSize = true;
            this.lblDNI.BackColor = System.Drawing.SystemColors.Menu;
            this.lblDNI.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblDNI.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDNI.Location = new System.Drawing.Point(292, 19);
            this.lblDNI.Name = "lblDNI";
            this.lblDNI.Size = new System.Drawing.Size(40, 18);
            this.lblDNI.TabIndex = 7;
            this.lblDNI.Text = "DNI:";
            // 
            // lblObraSocial
            // 
            this.lblObraSocial.AutoSize = true;
            this.lblObraSocial.BackColor = System.Drawing.SystemColors.Menu;
            this.lblObraSocial.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblObraSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblObraSocial.Location = new System.Drawing.Point(25, 69);
            this.lblObraSocial.Name = "lblObraSocial";
            this.lblObraSocial.Size = new System.Drawing.Size(116, 18);
            this.lblObraSocial.TabIndex = 8;
            this.lblObraSocial.Text = "N° Obra Social:";
            // 
            // lblNombreObraSocial
            // 
            this.lblNombreObraSocial.AutoSize = true;
            this.lblNombreObraSocial.BackColor = System.Drawing.SystemColors.Menu;
            this.lblNombreObraSocial.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblNombreObraSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblNombreObraSocial.Location = new System.Drawing.Point(292, 71);
            this.lblNombreObraSocial.Name = "lblNombreObraSocial";
            this.lblNombreObraSocial.Size = new System.Drawing.Size(96, 18);
            this.lblNombreObraSocial.TabIndex = 9;
            this.lblNombreObraSocial.Text = "Obra Social:";
            // 
            // txtDNI
            // 
            this.txtDNI.Location = new System.Drawing.Point(338, 20);
            this.txtDNI.Name = "txtDNI";
            this.txtDNI.Size = new System.Drawing.Size(180, 20);
            this.txtDNI.TabIndex = 10;
            // 
            // txtApellido
            // 
            this.txtApellido.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtApellido.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtApellido.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtApellido.Enabled = false;
            this.txtApellido.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtApellido.Location = new System.Drawing.Point(106, 43);
            this.txtApellido.Name = "txtApellido";
            this.txtApellido.Size = new System.Drawing.Size(180, 22);
            this.txtApellido.TabIndex = 11;
            // 
            // txtNroOS
            // 
            this.txtNroOS.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtNroOS.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtNroOS.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtNroOS.Enabled = false;
            this.txtNroOS.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtNroOS.Location = new System.Drawing.Point(147, 69);
            this.txtNroOS.Name = "txtNroOS";
            this.txtNroOS.Size = new System.Drawing.Size(139, 22);
            this.txtNroOS.TabIndex = 14;
            // 
            // lblFechaNac
            // 
            this.lblFechaNac.AutoSize = true;
            this.lblFechaNac.BackColor = System.Drawing.SystemColors.Menu;
            this.lblFechaNac.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblFechaNac.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFechaNac.Location = new System.Drawing.Point(645, 16);
            this.lblFechaNac.Name = "lblFechaNac";
            this.lblFechaNac.Size = new System.Drawing.Size(127, 18);
            this.lblFechaNac.TabIndex = 15;
            this.lblFechaNac.Text = "Fecha del Turno:";
            // 
            // dtpFehaTurno
            // 
            this.dtpFehaTurno.Location = new System.Drawing.Point(645, 37);
            this.dtpFehaTurno.Name = "dtpFehaTurno";
            this.dtpFehaTurno.Size = new System.Drawing.Size(200, 20);
            this.dtpFehaTurno.TabIndex = 16;
            // 
            // txtOBSocial
            // 
            this.txtOBSocial.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtOBSocial.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtOBSocial.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtOBSocial.Enabled = false;
            this.txtOBSocial.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtOBSocial.ForeColor = System.Drawing.SystemColors.WindowText;
            this.txtOBSocial.Location = new System.Drawing.Point(395, 68);
            this.txtOBSocial.Name = "txtOBSocial";
            this.txtOBSocial.Size = new System.Drawing.Size(123, 22);
            this.txtOBSocial.TabIndex = 17;
            // 
            // btnCancelar
            // 
            this.btnCancelar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnCancelar.BackColor = System.Drawing.SystemColors.Control;
            this.btnCancelar.Location = new System.Drawing.Point(1039, 109);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(110, 49);
            this.btnCancelar.TabIndex = 18;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // dgvListaTurnos
            // 
            this.dgvListaTurnos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvListaTurnos.Location = new System.Drawing.Point(12, 183);
            this.dgvListaTurnos.Name = "dgvListaTurnos";
            this.dgvListaTurnos.Size = new System.Drawing.Size(1155, 366);
            this.dgvListaTurnos.TabIndex = 19;
            // 
            // gbxDatosPaciente
            // 
            this.gbxDatosPaciente.Controls.Add(this.cboEspecialidades);
            this.gbxDatosPaciente.Controls.Add(this.btnCompletarMedico);
            this.gbxDatosPaciente.Controls.Add(this.btnCompletarDatos);
            this.gbxDatosPaciente.Controls.Add(this.cboHorarios);
            this.gbxDatosPaciente.Controls.Add(this.lblHorario);
            this.gbxDatosPaciente.Controls.Add(this.txtValorConsulta);
            this.gbxDatosPaciente.Controls.Add(this.lblValorConsulta);
            this.gbxDatosPaciente.Controls.Add(this.txtMedico);
            this.gbxDatosPaciente.Controls.Add(this.lblMedico);
            this.gbxDatosPaciente.Controls.Add(this.lblEspecialidad);
            this.gbxDatosPaciente.Controls.Add(this.txtDNI);
            this.gbxDatosPaciente.Controls.Add(this.label1);
            this.gbxDatosPaciente.Controls.Add(this.btnCancelar);
            this.gbxDatosPaciente.Controls.Add(this.btnAceptar);
            this.gbxDatosPaciente.Controls.Add(this.lblNombre);
            this.gbxDatosPaciente.Controls.Add(this.txtNombre);
            this.gbxDatosPaciente.Controls.Add(this.lblDNI);
            this.gbxDatosPaciente.Controls.Add(this.txtOBSocial);
            this.gbxDatosPaciente.Controls.Add(this.lblObraSocial);
            this.gbxDatosPaciente.Controls.Add(this.dtpFehaTurno);
            this.gbxDatosPaciente.Controls.Add(this.lblNombreObraSocial);
            this.gbxDatosPaciente.Controls.Add(this.lblFechaNac);
            this.gbxDatosPaciente.Controls.Add(this.txtApellido);
            this.gbxDatosPaciente.Controls.Add(this.txtNroOS);
            this.gbxDatosPaciente.ForeColor = System.Drawing.SystemColors.ControlText;
            this.gbxDatosPaciente.Location = new System.Drawing.Point(12, 12);
            this.gbxDatosPaciente.Name = "gbxDatosPaciente";
            this.gbxDatosPaciente.Size = new System.Drawing.Size(1155, 165);
            this.gbxDatosPaciente.TabIndex = 20;
            this.gbxDatosPaciente.TabStop = false;
            this.gbxDatosPaciente.Text = "Detalles del Turno";
            // 
            // btnCompletarDatos
            // 
            this.btnCompletarDatos.Location = new System.Drawing.Point(524, 10);
            this.btnCompletarDatos.Name = "btnCompletarDatos";
            this.btnCompletarDatos.Size = new System.Drawing.Size(75, 39);
            this.btnCompletarDatos.TabIndex = 27;
            this.btnCompletarDatos.Text = "Completar Paciente";
            this.btnCompletarDatos.UseVisualStyleBackColor = true;
            this.btnCompletarDatos.Click += new System.EventHandler(this.btnCompletarDatos_Click);
            // 
            // cboHorarios
            // 
            this.cboHorarios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboHorarios.FormattingEnabled = true;
            this.cboHorarios.Location = new System.Drawing.Point(645, 81);
            this.cboHorarios.Name = "cboHorarios";
            this.cboHorarios.Size = new System.Drawing.Size(121, 21);
            this.cboHorarios.TabIndex = 26;
            // 
            // lblHorario
            // 
            this.lblHorario.AutoSize = true;
            this.lblHorario.BackColor = System.Drawing.SystemColors.Menu;
            this.lblHorario.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblHorario.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblHorario.Location = new System.Drawing.Point(645, 60);
            this.lblHorario.Name = "lblHorario";
            this.lblHorario.Size = new System.Drawing.Size(66, 18);
            this.lblHorario.TabIndex = 25;
            this.lblHorario.Text = "Horario:";
            // 
            // txtValorConsulta
            // 
            this.txtValorConsulta.Location = new System.Drawing.Point(963, 37);
            this.txtValorConsulta.Name = "txtValorConsulta";
            this.txtValorConsulta.Size = new System.Drawing.Size(91, 20);
            this.txtValorConsulta.TabIndex = 24;
            // 
            // lblValorConsulta
            // 
            this.lblValorConsulta.AutoSize = true;
            this.lblValorConsulta.BackColor = System.Drawing.SystemColors.Menu;
            this.lblValorConsulta.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblValorConsulta.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblValorConsulta.ForeColor = System.Drawing.Color.Red;
            this.lblValorConsulta.Location = new System.Drawing.Point(934, 16);
            this.lblValorConsulta.Name = "lblValorConsulta";
            this.lblValorConsulta.Size = new System.Drawing.Size(154, 18);
            this.lblValorConsulta.TabIndex = 23;
            this.lblValorConsulta.Text = "Valor de la Consulta:";
            // 
            // txtMedico
            // 
            this.txtMedico.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtMedico.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtMedico.Location = new System.Drawing.Point(375, 109);
            this.txtMedico.Name = "txtMedico";
            this.txtMedico.Size = new System.Drawing.Size(171, 20);
            this.txtMedico.TabIndex = 22;
            // 
            // lblMedico
            // 
            this.lblMedico.AutoSize = true;
            this.lblMedico.BackColor = System.Drawing.SystemColors.Menu;
            this.lblMedico.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblMedico.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMedico.Location = new System.Drawing.Point(304, 111);
            this.lblMedico.Name = "lblMedico";
            this.lblMedico.Size = new System.Drawing.Size(65, 18);
            this.lblMedico.TabIndex = 21;
            this.lblMedico.Text = "Medico:";
            // 
            // lblEspecialidad
            // 
            this.lblEspecialidad.AutoSize = true;
            this.lblEspecialidad.BackColor = System.Drawing.SystemColors.Menu;
            this.lblEspecialidad.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblEspecialidad.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEspecialidad.Location = new System.Drawing.Point(35, 112);
            this.lblEspecialidad.Name = "lblEspecialidad";
            this.lblEspecialidad.Size = new System.Drawing.Size(106, 18);
            this.lblEspecialidad.TabIndex = 19;
            this.lblEspecialidad.Text = "Especialidad:";
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.btnFiltrar.BackColor = System.Drawing.SystemColors.Control;
            this.btnFiltrar.Location = new System.Drawing.Point(332, 555);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(168, 34);
            this.btnFiltrar.TabIndex = 29;
            this.btnFiltrar.Text = "Buscar";
            this.btnFiltrar.UseVisualStyleBackColor = false;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // txtFiltrar
            // 
            this.txtFiltrar.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.txtFiltrar.AutoCompleteMode = System.Windows.Forms.AutoCompleteMode.SuggestAppend;
            this.txtFiltrar.AutoCompleteSource = System.Windows.Forms.AutoCompleteSource.CustomSource;
            this.txtFiltrar.Location = new System.Drawing.Point(155, 563);
            this.txtFiltrar.Name = "txtFiltrar";
            this.txtFiltrar.Size = new System.Drawing.Size(171, 20);
            this.txtFiltrar.TabIndex = 30;
            // 
            // lblFiltrar
            // 
            this.lblFiltrar.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblFiltrar.AutoSize = true;
            this.lblFiltrar.BackColor = System.Drawing.SystemColors.Menu;
            this.lblFiltrar.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.lblFiltrar.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFiltrar.Location = new System.Drawing.Point(30, 565);
            this.lblFiltrar.Name = "lblFiltrar";
            this.lblFiltrar.Size = new System.Drawing.Size(119, 18);
            this.lblFiltrar.TabIndex = 29;
            this.lblFiltrar.Text = "Buscar por DNI:";
            // 
            // btnCompletarMedico
            // 
            this.btnCompletarMedico.Location = new System.Drawing.Point(552, 99);
            this.btnCompletarMedico.Name = "btnCompletarMedico";
            this.btnCompletarMedico.Size = new System.Drawing.Size(75, 39);
            this.btnCompletarMedico.TabIndex = 28;
            this.btnCompletarMedico.Text = "Completar Medico";
            this.btnCompletarMedico.UseVisualStyleBackColor = true;
            this.btnCompletarMedico.Click += new System.EventHandler(this.btnCompletarMedico_Click);
            // 
            // cboEspecialidades
            // 
            this.cboEspecialidades.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cboEspecialidades.FormattingEnabled = true;
            this.cboEspecialidades.Location = new System.Drawing.Point(147, 110);
            this.cboEspecialidades.Name = "cboEspecialidades";
            this.cboEspecialidades.Size = new System.Drawing.Size(121, 21);
            this.cboEspecialidades.TabIndex = 29;
            // 
            // frmNuevoTurno
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1179, 601);
            this.Controls.Add(this.txtFiltrar);
            this.Controls.Add(this.btnFiltrar);
            this.Controls.Add(this.lblFiltrar);
            this.Controls.Add(this.gbxDatosPaciente);
            this.Controls.Add(this.dgvListaTurnos);
            this.MinimumSize = new System.Drawing.Size(581, 319);
            this.Name = "frmNuevoTurno";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nuevo_Turno";
            this.Load += new System.EventHandler(this.frmNuevoTurno_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvListaTurnos)).EndInit();
            this.gbxDatosPaciente.ResumeLayout(false);
            this.gbxDatosPaciente.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.Button btnAceptar;
        private System.Windows.Forms.Label lblNombre;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblDNI;
        private System.Windows.Forms.Label lblObraSocial;
        private System.Windows.Forms.Label lblNombreObraSocial;
        private System.Windows.Forms.TextBox txtDNI;
        private System.Windows.Forms.TextBox txtApellido;
        private System.Windows.Forms.TextBox txtNroOS;
        private System.Windows.Forms.Label lblFechaNac;
        private System.Windows.Forms.DateTimePicker dtpFehaTurno;
        private System.Windows.Forms.TextBox txtOBSocial;
        private System.Windows.Forms.Button btnCancelar;
        private System.Windows.Forms.DataGridView dgvListaTurnos;
        private System.Windows.Forms.GroupBox gbxDatosPaciente;
        private System.Windows.Forms.Label lblEspecialidad;
        private System.Windows.Forms.TextBox txtValorConsulta;
        private System.Windows.Forms.Label lblValorConsulta;
        private System.Windows.Forms.TextBox txtMedico;
        private System.Windows.Forms.Label lblMedico;
        private System.Windows.Forms.ComboBox cboHorarios;
        private System.Windows.Forms.Label lblHorario;
        private System.Windows.Forms.Button btnFiltrar;
        private System.Windows.Forms.TextBox txtFiltrar;
        private System.Windows.Forms.Label lblFiltrar;
        private System.Windows.Forms.Button btnCompletarDatos;
        private System.Windows.Forms.Button btnCompletarMedico;
        private System.Windows.Forms.ComboBox cboEspecialidades;
    }
}