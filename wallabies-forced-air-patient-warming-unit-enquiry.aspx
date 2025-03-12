<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="wallabies-forced-air-patient-warming-unit-enquiry.aspx.cs" Inherits="wallabies_warm.wallabies_forced_air_patient_warming_unit_enquiry" %>
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
				<li>Enquiry</li>
			</ul>
		</div>
	</div>
<!-- //banner1 -->
	<div class="banner-bottom" id="about">
		<div class="container">
			<h2 class="w3_heade_tittle_agile">Enquiry</h2>
					<div class =" row">
                    <div class =" col-md-3"></div>
                    <div class =" col-md-6">
                    <img src="images/Enquiry.jpg" alt ="" class =" img-responsive "/>
                    </div>
                    <div class =" col-md-3"></div>
                    </div>
		    <p class="sub_t_agileits">Get in touch...</p>
			<div class="contact-form-aits">
				 <form action="#" method="post">
					<input type="text" class="margin-right" name="Name" placeholder="Name" required="">
					<input type="email" name="Email" placeholder="Email" required="">
					<input type="text" class="margin-right" name="Phone Number" placeholder="Phone Number" required="">
					<input type="text" name="Subject" placeholder="Subject" required="">
					<textarea name="Message" placeholder="Message" required=""></textarea>
					<div class="send-button agileits w3layouts">
						<button class="btn btn-primary">SEND MESSAGE</button>
					</div>
				  </form>
			   </div>
	    </div>
	</div>
</asp:Content>
