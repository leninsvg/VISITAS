﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Sancion_frmsancionAdmin : System.Web.UI.Page
{
    #region Variables
    DataSet dsData = new DataSet();
    Object[] objparam = new Object[1];
    Funciones fun = new Funciones();
    #endregion

    #region Load
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["usuCodigo"] == null || Session["usuCodigo"].ToString() == "")
                Response.Redirect("~/Index.aspx");
        }
        catch (Exception)
        {
            Response.Redirect("~/Index.aspx");
        }
        try
        {
            if (!IsPostBack)
            {
                lbltitulo.Text = "Administrador de Sanciones";
                funCargaMantenimiento();
                if (Request["mensajeRetornado"] != null)
                {
                    SIFunBasicas.Basicas.PresentarMensaje(Page, "::VISITA PPL::", Request["MensajeRetornado"]);
                }
            }
            else
            {
                grdvDatos.DataSource = Session["grdvDatos"];
                ctrlbuscar.GrdGrillaBusqueda = grdvDatos;
            }
        }
        catch (Exception ex)
        {
            SIFunBasicas.Basicas.PresentarMensaje(Page, "Ocurrió un Error al Cargar Datos", ex.Message);
        }
    }
    #endregion

    #region Funciones y Procedimientos
    protected void funCargaMantenimiento()
    {
        Array.Resize(ref objparam, 1);
        objparam[0] = 0;
        dsData = fun.consultarDatos("spnSancionAdminReadAll", objparam, Page, (String[])Session["constrring"]);
        grdvDatos.DataSource = dsData;
        grdvDatos.DataBind();
        Session["grdvDatos"] = grdvDatos.DataSource;
        ctrlbuscar.GrdGrillaBusqueda = grdvDatos;
        ctrlbuscar.CargarComponente();
    }
    #endregion

    #region Botones y Eventos
    protected void btningreso_Click(object sender, ImageClickEventArgs e)
    {
        ScriptManager.RegisterStartupScript(this, GetType(), "Usuario_Nuevo", "javascript: var posicion_x; var posicion_y; posicion_x=(screen.width/2)-(900/2); posicion_y=(screen.height/2)-(600/2); window.open('frmsancionNew.aspx" + "',null,'left=' + posicion_x + ', top=' + posicion_y + ', width=1024px, height=500px, status=no,resizable= yes, scrollbars=yes, toolbar=no, location=no, menubar=no,titlebar=0');", true);
    }
    protected void btnsalir_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("~/Index1.aspx");
    }
    protected void grdvDatos_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdvDatos.PageIndex = e.NewPageIndex;
        ctrlbuscar.GrdGrillaBusqueda = grdvDatos;
        grdvDatos.DataBind();
    }
    protected void btnselecc_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int intIndex = gvRow.RowIndex;
        String strCodigoSan = grdvDatos.DataKeys[intIndex].Values["CodigoSan"].ToString();
        ScriptManager.RegisterStartupScript(this.UpdatePanel1, GetType(), "Editar_Usuario", "javascript: var posicion_x; var posicion_y; posicion_x=(screen.width/2)-(900/2); posicion_y=(screen.height/2)-(600/2); window.open('frmsancionEdit.aspx?codsancion=" + strCodigoSan + "',null,'left=' + posicion_x + ', top=' + posicion_y + ', width=1024px, height=600px, status=no,resizable= yes, scrollbars=yes, toolbar=no, location=no, menubar=no,titlebar=0');", true);
    }
    #endregion
}