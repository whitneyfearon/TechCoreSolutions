<%@ Page Title="Contact Us " Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="TechCoreSolutions.Contact" %>

<asp:Content ID="cContactBody" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container mt-5">
        <div class="row pl-5">
            <div class="col-sm-3">
                <br />
                <div class="card">
                    <div class="card-body row">
                        <div class="col-sm-1 pt-2">
                            <i class="fas fa-mobile-alt fa-2x text-primary"></i>
                        </div>
                        <div class="col pl-4">
                            <h6>Phone</h6>
                            <i class="text-muted">(876) 123-4567</i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="card-body row">
                        <div class="col-sm-1 pt-2">
                            <i class="fas fa-envelope fa-2x text-primary"></i>
                        </div>
                        <div class="col pl-5">
                            <h6>Email</h6>
                            <i class="text-muted">techcoresolutions@gmail.com</i>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-sm-4">
                <br />
                <div class="card">
                    <div class="card-body row">
                        <div class="col-sm-1 pt-2">
                            <i class="fas fa-map-marker-alt fa-2x text-primary"></i>
                        </div>
                        <div class="col pl-4">
                            <h6>Address</h6>
                            <i class="text-muted">123 Harley Drive, Kingston 10</i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <h4 class="pl-5 pt-5">CONTACT <b class="text-primary" style="font-size: xx-large">T</b>ECH CORE SOLUTIONS</h4>

        <div class="col-11 pl-5">
            <div class="row pt-3">
                <div class="form-group col">
                    <label class="sr-only" for="name">Name</label>
                    <input type="text" id="name" class="form-control" name="Name" placeholder="Name*" required>
                </div>
                <div class="form-group col">
                    <label class="sr-only" for="email">Email</label>
                    <input type="email" id="email" class="form-control" name="Email" placeholder="Email*" required>
                </div>
            </div>
            <div class="form-group">
                <textarea class="form-control" id="message" name="Message" rows="7"
                    placeholder="Message*" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">
                Send Message</button>
        </div>
    </div>
</asp:Content>
