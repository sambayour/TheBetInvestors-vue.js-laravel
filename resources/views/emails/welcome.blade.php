<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns:v="urn:schemas-microsoft-com:vml">
  <style>
              /* -------------------------------------
                  GLOBAL RESETS
                  ------------------------------------- */

                  /*All the styling goes here*/

                  img {
                    border: none;
                    -ms-interpolation-mode: bicubic;
                    max-width: 100%; 
                  }

                  body {
                    background-color: #f6f6f6;
                    font-family: sans-serif;
                    -webkit-font-smoothing: antialiased;
                    font-size: 14px;
                    line-height: 1.4;
                    margin: 0;
                    padding: 0;
                    -ms-text-size-adjust: 100%;
                    -webkit-text-size-adjust: 100%; 
                  }

                  table {
                    border-collapse: separate;
                    mso-table-lspace: 0pt;
                    mso-table-rspace: 0pt;
                    width: 100%; }
                    table td {
                      font-family: sans-serif;
                      font-size: 14px;
                      vertical-align: top; 
                    }

                    #email_logo{

                      width: 100px;
                      height: 100px;

                    }
                    #email_div{
                      text-align: center;
                      padding-bottom: 20px;
                    }

              /* -------------------------------------
                  BODY & CONTAINER
                  ------------------------------------- */

                  .body {
                    background-color: #f6f6f6;
                    width: 100%; 
                  }

                  /* Set a max-width, and make it display as block so it will automatically stretch to that width, but will also shrink down on a phone or something */
                  .container {
                    display: block;
                    margin: 0 auto !important;
                    /* makes it centered */
                    max-width: 580px;
                    padding: 10px;
                    width: 580px; 
                  }

                  /* This should also be a block element, so that it will fill 100% of the .container */
                  .content {
                    box-sizing: border-box;
                    display: block;
                    margin: 0 auto;
                    max-width: 580px;
                    padding: 10px; 
                  }

              /* -------------------------------------
                  HEADER, FOOTER, MAIN
                  ------------------------------------- */
                  .main {
                    background: #ffffff;
                    border-radius: 3px;
                    width: 100%; 
                  }

                  .wrapper {
                    box-sizing: border-box;
                    padding: 20px; 
                  }

                  .content-block {
                    padding-bottom: 10px;
                    padding-top: 10px;
                  }

                  .footer {
                    clear: both;
                    margin-top: 10px;
                    text-align: center;
                    width: 100%; 
                  }
                  .footer td,
                  .footer p,
                  .footer span,
                  .footer a {
                    color: #999999;
                    font-size: 12px;
                    text-align: center; 
                  }

              /* -------------------------------------
                  TYPOGRAPHY
                  ------------------------------------- */
                  h1,
                  h2,
                  h3,
                  h4 {
                    color: #000000;
                    font-family: sans-serif;
                    font-weight: 400;
                    line-height: 1.4;
                    margin: 0;
                    margin-bottom: 30px; 
                  }

                  h1 {
                    font-size: 35px;
                    font-weight: 300;
                    text-align: center;
                    text-transform: capitalize; 
                  }

                  p,
                  ul,
                  ol {
                    font-family: sans-serif;
                    font-size: 14px;
                    font-weight: normal;
                    margin: 0;
                    margin-bottom: 15px; 
                  }
                  p li,
                  ul li,
                  ol li {
                    list-style-position: inside;
                    margin-left: 5px; 
                  }

                  a {
                    color: #3498db;
                    text-decoration: underline; 
                  }

              /* -------------------------------------
                  BUTTONS
                  ------------------------------------- */
                  .btn {
                    box-sizing: border-box;
                    width: 100%; }
                    .btn > tbody > tr > td {
                      padding-bottom: 15px; }
                      .btn table {
                        width: auto; 
                      }
                      .btn table td {
                        background-color: #ffffff;
                        border-radius: 5px;
                        text-align: center; 
                      }
                      .btn a {
                        background-color: #ffffff;
                        border: solid 1px red;
                        border-radius: 5px;
                        box-sizing: border-box;
                        color: #3498db;
                        cursor: pointer;
                        display: inline-block;
                        font-size: 14px;
                        font-weight: bold;
                        margin: 0;
                        padding: 12px 25px;
                        text-decoration: none;
                        text-transform: capitalize; 
                      }

                      .btn-primary table td {
                        background-color: #3498db; 
                      }

                      .btn-primary a {
                        background-color: #2D2A6F;
                        border-color: #2D2A6F;
                        color: #ffffff; 
                      }

              /* -------------------------------------
                  OTHER STYLES THAT MIGHT BE USEFUL
                  ------------------------------------- */
                  .last {
                    margin-bottom: 0; 
                  }

                  .first {
                    margin-top: 0; 
                  }

                  .align-center {
                    text-align: center; 
                  }

                  .align-right {
                    text-align: right; 
                  }

                  .align-left {
                    text-align: left; 
                  }

                  .clear {
                    clear: both; 
                  }

                  .mt0 {
                    margin-top: 0; 
                  }

                  .mb0 {
                    margin-bottom: 0; 
                  }

                  .preheader {
                    color: transparent;
                    display: none;
                    height: 0;
                    max-height: 0;
                    max-width: 0;
                    opacity: 0;
                    overflow: hidden;
                    mso-hide: all;
                    visibility: hidden;
                    width: 0; 
                  }

                  .powered-by a {
                    text-decoration: none; 
                  }

                  hr {
                    border: 0;
                    border-bottom: 1px solid #f6f6f6;
                    margin: 20px 0; 
                  }

              /* -------------------------------------
                  RESPONSIVE AND MOBILE FRIENDLY STYLES
                  ------------------------------------- */
                  @media only screen and (max-width: 620px) {
                    table[class=body] h1 {
                      font-size: 28px !important;
                      margin-bottom: 10px !important; 
                    }
                    table[class=body] p,
                    table[class=body] ul,
                    table[class=body] ol,
                    table[class=body] td,
                    table[class=body] span,
                    table[class=body] a {
                      font-size: 16px !important; 
                    }
                    table[class=body] .wrapper,
                    table[class=body] .article {
                      padding: 10px !important; 
                    }
                    table[class=body] .content {
                      padding: 0 !important; 
                    }
                    table[class=body] .container {
                      padding: 0 !important;
                      width: 100% !important; 
                    }
                    table[class=body] .main {
                      border-left-width: 0 !important;
                      border-radius: 0 !important;
                      border-right-width: 0 !important; 
                    }
                    table[class=body] .btn table {
                      width: 100% !important; 
                    }
                    table[class=body] .btn a {
                      width: 100% !important; 
                    }
                    table[class=body] .img-responsive {
                      height: auto !important;
                      max-width: 100% !important;
                      width: auto !important; 
                    }
                  }

              /* -------------------------------------
                  PRESERVE THESE STYLES IN THE HEAD
                  ------------------------------------- */
                  @media all {
                    .ExternalClass {
                      width: 100%; 
                    }
                    .ExternalClass,
                    .ExternalClass p,
                    .ExternalClass span,
                    .ExternalClass font,
                    .ExternalClass td,
                    .ExternalClass div {
                      line-height: 100%; 
                    }
                    .apple-link a {
                      color: inherit !important;
                      font-family: inherit !important;
                      font-size: inherit !important;
                      font-weight: inherit !important;
                      line-height: inherit !important;
                      text-decoration: none !important; 
                    }
                    .btn-primary table td:hover {
                      background-color: #090f54 !important; 
                    }
                   /* .btn-primary a:hover {
                      background-color: #6360a5 !important;
                      border-color: #6360a5 !important; 
                    } */
                  }

                </style>
              </head>
              <body class="">
                <span class="preheader">Account Details</span>
                <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="body">
                  <tr>
                    <td>&nbsp;</td>
                    <td class="container">
                      <div class="content">

                        <!-- START CENTERED WHITE CONTAINER -->
                        <table role="presentation" class="main">

                          <!-- START MAIN CONTENT AREA -->
                          <tr>
                            <td class="wrapper">
                              <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                  <div class="container" id="email_div">

                                    <img src="img/nafc-logo.png" id="email_logo" alt="nafc-logo">
                                  </div>
                                  <td>
                                    <p>Hello {{$user['full_name']}}</p>
                                    <p> 
                                    Your account has been successfully created! </p>
                                    <p></p>
                                    <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="btn btn-primary">
                                      <tbody>
                                        <tr>
                                          <td align="center">
                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                                              <tbody>
                                                <tr>
                                                  <td> <a href="#">Account Info</a> </td>
                                                </tr>
                                              </tbody>
                                            </table>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table> 

                                    <table>
                                      
                                      <div class="container">
                                        <p><strong>Full Names</strong> &nbsp;&nbsp;{{$user['full_name']}}</p>
                                      </div>
                                      <div class="container">
                                        <p><strong>Username</strong> &nbsp;&nbsp;{{$user['service_number']}}</p>
                                      </div>
                                      <div class="container">
                                        <p><strong>Email Address</strong> &nbsp;&nbsp;{{$user['email']}}</p>
                                      </div>
                                      <div class="container">
                                        <p><strong>Password</strong> &nbsp;&nbsp;{{$user['password']}}</p>
                                      </div>
                                      <div class="container">
                                        <p><strong>Date Created</strong>&nbsp;&nbsp;{{$user['created_at']->format('F d, Y')}}</p>
                                      </div>
                                    </table>  
                                    <table>                                  
                                    <p><strong>In case of any account issues or security, 
                                    Please contact us with any questions regarding your issues.</strong>  </p>
                                   
                                    <p>Thanks</p>   
                                    <p>NAFC Team.</p>
                                  </table>

                                  </td>
                                </tr>     
                              </table>
                              <table role="presentation" border="0" cellpadding="0" cellspacing="0" class="btn btn-primary">
                                      <tbody>
                                        <tr>
                                          <td align="center">
                                            <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                                              <tbody>
                                                <tr>
                                                  <td><a href="#">Click here to login</a> </td>
                                                </tr>
                                              </tbody>
                                            </table>
                                          </td>
                                        </tr>
                                      </tbody>
                                    </table>
                            </td>
                          </tr>

                          <!-- END MAIN CONTENT AREA -->
                        </table>
                        <!-- END CENTERED WHITE CONTAINER -->

                        <!-- START FOOTER -->
                        <div class="footer">
                          <table role="presentation" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td class="content-block">
                                <span class="apple-link"> </span>
                                <br> Headquaters NAFC Apapa, Lagos Nigeria.
                              </td>
                            </tr>
                            <tr>
                              <td class="content-block powered-by">
							  <a href="{{url('/')}}">www.thebetinvestors.com</a> | <a href="mailto:hello@thebetinvestors.com">hello@thebetinvestors.com</a> | <a href="">Phone: 09075768788</a>
                             </td>
                           </tr> 
                         </table>
                       </div>
                       <!-- END FOOTER -->

                     </div>
                   </td>
                   <td>&nbsp;</td>
                 </tr>
               </table>
             </body>
             </html>