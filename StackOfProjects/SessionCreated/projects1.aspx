<%@ Page Title="" Language="C#" MasterPageFile="~/SessionCreated/MasterPage.master" AutoEventWireup="true" CodeFile="projects1.aspx.cs" Inherits="projects1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="assets/css/formstyle.css">
    <link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">

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
        .auto-style1 {
            width: 199px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div class="wrapper row2">


          <br />
       <a style="position:relative;left:180px" href="FETable.aspx" class="btn btn-primary">First Year</a>
            <a style="position:relative;left:240px" href="SETable.aspx" class="btn btn-danger">Second Year</a>
            <a style="position:relative;left:370px" href="TETable.aspx" class="btn btn-success">Third Year</a>
            <a style="position:relative;left:480px" href="BETable.aspx" class="btn btn-warning">Final Year</a>
              <a style="position:relative;left:550px" href="OtherProjects.aspx" class="btn btn-warning">Other Projects</a>
            <!-- /. ROW  -->
<br />
    <a href="AddProject.aspx" style="position:relative;left:570px;color:red;" class="btn bg-warning">Add Your Own Project!</a> 
<!--      <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Update Project</a>
    <a href="projectform.aspx"  class="btn btn-warning" style="color:red;">Delete Project</a>-->
            <br /><br />
  
  
  
      
            <h5 style="text-align:center">List Of Projects</h5>
            <table class="table">
                <thead>
                    <tr>
                        <th>Project Id</th>
                        <th>Project Name</th>
                        <th>Project Technology</th>
                        <th>Project Owner</th>
                        <th>Uploaded Project Date</th>
                        <th class="auto-style1">View Project</th>




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



            <table class="table">

                <tr>
                    <th>
                        <h2 class="font-x2">Project Id</h2>
                        <p class="btmspace-50">The projects are given a unique Project Id for their reference</p>

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
                        <p>After clicking view project button,You will be provided with details of the respective project</p>

                    </th>








                </tr>
            </table>

            <img src="images/stack-lighting-identity.gif" style="margin-bottom: auto; height: 401px; width: 1675px" />

        </div>





        <!-- /. ROW  -->
        <script>

            $(function () {
                var documentEl = $(document),

                fadeElem = $('.form');

                documentEl.on('scroll', function () {
                    var currScrollPos = documentEl.scrollTop();

                    fadeElem.each(function () {

                        var $this = $(this),
                        elemOffsetTop = $this.offset().top;
                        if (currScrollPos > elemOffsetTop) $this.css('opacity', 1 - (currScrollPos - elemOffsetTop) / 400);





                    });


                });
            });

        </script>
        <script src="assets/js/jquery-3.2.1.min.js"></script>



        <!-- /. PAGE WRAPPER  -->

   
</asp:Content>

