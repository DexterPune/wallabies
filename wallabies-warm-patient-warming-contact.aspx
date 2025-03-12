<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="wallabies-warm-patient-warming-contact.aspx.cs" Inherits="wallabies_new.wallabies_warm_patient_warming_contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- banner1 -->
	<div class="banner1 jarallax">
		<div class="container">
		</div>
	</div>

	<div class="services-breadcrumb">
		<div class="container">
			<ul>
				<li><a href="default.aspx">Home</a><i>|</i></li>
				<li>Contact</li>
			</ul>
		</div>
	</div>
<!-- //banner1 -->
	<div class="banner-bottom" id="about">
		<div class="container">
			<h2 class="w3_heade_tittle_agile">Contact Us</h2>
		    <p class="sub_t_agileits">Get in touch...</p>

           <div class="contact-top-agileits">
               <div class="col-md-6 contact-grid ">
					<div class="contact-grid1 agileits-w3layouts">
						<i class="fa fa-location-arrow"></i>
						<div class="con-w3l-info">
						   <h4>Address </h4>
						  <b>Pharmacle Health Care Inc.</b><p>10212 Yonge Street, 202, Richmond Hill, Ontario, Canada, L4C 3B6</p>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-6 contact-grid">
					<div class="contact-grid3 w3l">
						<i class="fa fa-envelope"></i>
						<div class="con-w3l-info">
						  <h4>Email</h4>
						  <p><a href="mailto:info@wallabieswarmcares.com">info@wallabieswarmcares.com</a><br/>
                          <a href="mailto:prashant@wallabieswarmcares.com">prashant@wallabieswarmcares.com</a>
						 
						  </p></div>
						  <div class="clearfix"></div>
					</div>
				</div>
				<div class="clearfix"></div>
				
			</div>
			<div class="contact-form-aits">
				 <form id="Form1" runat="server" >
                <div class="form-group">
                    <asp:TextBox runat="server" type="text" class=" margin-right" name="Name" ID="TextName" 
                        placeholder="Name *"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="email" name="Email Address"
                        ID="TextEmailAddress" placeholder="Email Address"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="text" class="margin-right" name="Contact Number"
                        ID="txtMobile" placeholder="Contact Number *"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="text" name="Subject"
                        ID="TextPick" placeholder="Subject"></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:TextBox runat="server" type="text" name="Message" TextMode ="MultiLine"
                        ID="txtMessage" placeholder="Message"></asp:TextBox>
                </div>
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" class="btn btn-block btn-danger " OnClick="btnsubmit_Click" />
            </form>
			   </div>
	    </div>
	</div>

<!--div class="map_agile">
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d132.94035005755023!2d-79.43889459537961!3d43.87644137911427!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e1!3m2!1sen!2sin!4v1679735904499!5m2!1sen!2sin"></iframe>
</div-->
</asp:Content>
