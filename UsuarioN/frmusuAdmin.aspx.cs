﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UsuarioN_frmusuAdmin : System.Web.UI.Page
{
    #region variables
    Object[] objparam = new Object[1];
    DataSet dsData = new DataSet();
    Funciones fun = new Funciones();
    #endregion

    #region Load
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                lbltitulo.Text = "Administrador de Usuarios";
                funCargarpost();
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
    protected void funCargarpost()
    {
        objparam[0] = 0;
        dsData = fun.consultarDatos("spnUsuAdminReadAll", objparam, Page, (String[])Session["constrring"]);
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
        ScriptManager.RegisterStartupScript(this, GetType(), "Usuario_Nuevo", "javascript: var posicion_x; var posicion_y; posicion_x=(screen.width/2)-(900/2); posicion_y=(screen.height/2)-(600/2); window.open('frmusuNew.aspx" + "',null,'left=' + posicion_x + ', top=' + posicion_y + ', width=1024px, height=500px, status=no,resizable= yes, scrollbars=yes, toolbar=no, location=no, menubar=no,titlebar=0');", true);
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

    protected void Ordenar_GridView(object sender, GridViewSortEventArgs e)
    {
        DataSet mitabla = (DataSet)Session["grdvDatos"];
        DataTable datos = mitabla.Tables[0];
        if (datos != null)
        {
            DataView dataView = new DataView(datos);
            dataView.Sort = e.SortExpression + " " + fun.ConvertSortDirection(e.SortDirection);

            grdvDatos.DataSource = dataView;
            grdvDatos.DataBind();
        }
    }
    protected void btnselecc_Click(object sender, ImageClickEventArgs e)
    {
        GridViewRow gvRow = (GridViewRow)(sender as Control).Parent.Parent;
        int intIndex = gvRow.RowIndex;
        String strCodigoUsu = grdvDatos.DataKeys[intIndex].Values["Codigo"].ToString();
        ScriptManager.RegisterStartupScript(this.UpdatePanel1, GetType(), "Editar_Usuario", "javascript: var posicion_x; var posicion_y; posicion_x=(screen.width/2)-(900/2); posicion_y=(screen.height/2)-(600/2); window.open('frmusuEdit.aspx?usuCodigo=" + strCodigoUsu + "',null,'left=' + posicion_x + ', top=' + posicion_y + ', width=1024px, height=500px, status=no,resizable= yes, scrollbars=yes, toolbar=no, location=no, menubar=no,titlebar=0');", true);
    }
    #endregion
}