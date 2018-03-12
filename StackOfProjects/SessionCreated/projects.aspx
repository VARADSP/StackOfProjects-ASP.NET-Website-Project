<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="projects.aspx.cs" Inherits="projects" %>

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

    <style>
#overlay {
    position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    background-color: rgba(0,0,0,0.5);
    z-index: 2;
    cursor: pointer;
}

#text{
    position: absolute;
    top: 50%;
    left: 50%;
    font-size: 50px;
    color: white;
    transform: translate(-50%,-50%);
    -ms-transform: translate(-50%,-50%);
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <a href="FETable.aspx" class="btn btn-primary">First Year</a>
                        <a href="SETable.aspx" class="btn btn-danger">Second Year</a>
                        <a href="TETable.aspx" class="btn btn-success">Third Year</a>
                        <a href="BETable.aspx" class="btn btn-warning">Final Year</a>
          <!-- /. ROW  -->
           

                 
                    <div class="col-lg-6 col-md-6">
                        <h5>List Of Projects</h5>
                        <div class="table-responsive" style="width:850px;height:140px">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Project Id</th>
                                        <th>Project Name</th>
                                        <th>Project Technology</th>
                                        <th>Project Owner</th>
                                        <th>Uploaded Project Date</th>
                                        <th>View Project</th>
                                        
                                      
                                      
                                        
                                    </tr>
                            <!--    </thead>
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

                                </tbody>-->
                                     
                            </table>

                            

                        </div>

                          <div class="table-responsive" style="width:850px;height:740px">
                            <table class="table">
                                
                                    <tr>
                                        <th>
                                              <h2 class="font-x2">Project Id</h2>
    <p class="btmspace-50"> The projects are given a unique Project Id for their reference</p>
    
                                        </th>
                                          <th>
                                              <h2 class="font-x2">Project Name</h2>
    <p class="btmspace-50">Displaying the names of each projects</p>
    
                                        </th>
                                                    <th>
                                              <h2 class="font-x2">Project Technology</h2>
    <p class="btmspace-50">This will give you the technology on which the projects are made!</p>
    
                                        </th>
                                        <br />
                                              <th>
                                              <h2 class="font-x2">Project Owner</h2>
    <p class="btmspace-50">The Owner of the respective projects for further queries</p>
    
                                        </th>
                                   
                                                   <th>
                                              <h2 class="font-x2">Uploaded Project Date </h2>
    <p class="btmspace-50">Date On which the project is hosted on our website</p>
    
                                        </th>

                                            <th>
                                              <h2>View Project</h2>
    <p >After clicking view project button,You will be provided with details of the respective project</p>
    
                                        </th>
                                  




                                      
          
                                        
                                    </tr>
                                    </table>

<img src="images/stack-lighting-identity.gif" height="10px" style="margin-bottom:auto;height:350px;width:900px" />

         </div>                                                                                  


                    </div>
                </div>
   
   


                <!-- /. ROW  -->
                <hr>
    


            
           
         <!-- /. PAGE WRAPPER  -->
   
</asp:Content>

