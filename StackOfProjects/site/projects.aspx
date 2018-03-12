﻿<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="projects.aspx.vb" Inherits="projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <style type="text/css">
        .auto-style1 {
            width: 103px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" Runat="Server">
    <a href="FETable.aspx" class="btn btn-primary">First Year</a>
                        <a href="SETable.aspx" class="btn btn-danger">Second Year</a>
                        <a href="TETable.aspx" class="btn btn-success">Third Year</a>
                        <a href="BETable.aspx" class="btn btn-warning">Final Year</a>
          <!-- /. ROW  -->
           

                 
                    <div class="col-lg-6 col-md-6">
                        <h5>List Of Projects</h5>
                        <div class="table-responsive" style="width:850px;height:740px">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Project Id</th>
                                        <th>Project Name</th>
                                        <th>Project Technology</th>
                                        <th>Project Owner</th>
                                        <th>Project Date</th>
                                        <th>View Project</th>
                                        
                                      
                                      
                                        
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="">
                                        <td style="color:red">1</td>
                                        <td style="color:blue">Gadgets</td>
                                        <td style="color:cyan">C++</td>
                                        <td style="color:green">VSP</td>
                                        <td style="color:red">13/07/2015</td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="View" /></td>
                                    </tr>
                                    <tr class="info">
                                        <td>2</td>
                                        <td>Jacob</td>
                                        <td>Thornton</td>
                                        <td>@fatA</td>
                                    </tr>
                                    <tr class="warning">
                                        <td>3</td>
                                        <td>Larry</td>
                                        <td>the Bird</td>
                                        <td>@twitter</td>
                                    </tr>
                                    <tr class="danger">
                                        <td>4</td>
                                        <td>John</td>
                                        <td>Smith</td>
                                        <td>@jsmith</td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!-- /. ROW  -->
                <hr>


            
           
         <!-- /. PAGE WRAPPER  -->
        
</asp:Content>

